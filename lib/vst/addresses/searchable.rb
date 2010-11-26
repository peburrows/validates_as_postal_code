module VST
  module Addresses
    module Searchable
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def self.extended(object)
          object.class_eval{
            @attributes = []
            @aliases    = []
            @list       = []
          }

          class << object
            attr_accessor :attributes, :aliases, :list
          end
        end

        def searchable_config(&block)
          # just send the object back to the block for configuration -- it might be good to create methods to update configuration
          yield self
        end

        def find(term, field=:name)
          search(:find, term, field)
        end

        def find_all(term, field=:name)
          search(:find_all, term, field)
        end

    protected
        def method_missing(method, *args, &block)
          m = method.to_s.match(/^(find_all)_by_(.+)$/i)
          m ||= method.to_s.match(/^(find)_by_(.+)$/i)

          return super unless m && args.length == 1
          send(m.captures.first.to_sym, args.first, m.captures.last.to_sym)
        end

        def define_search_field(field)
          if field.is_a?(Array)
            multiple_fields = []
            field.each do |v|
              unless @attributes.include?(v)
                new_field = []
                @aliases.each{|al|
                  new_field << al[al.keys.first] if al.keys.first.to_s.downcase == v.to_s.downcase
                }
              else
                new_field = v
              end
              multiple_fields << new_field if new_field
            end
            return multiple_fields.flatten.uniq
          elsif !@attributes.include?(field)
            field = @aliases.find{|a| a.keys.first.to_s.downcase == field.to_s.downcase}
            field = field.values.first
          end
          field
        end

        def search(method, term, field)
          field = define_search_field(field)

          if field.is_a?(Array)
            @list.send(method){|c|
              found = false
              field.each do |key|
                next if found
                found = c[key].is_a?(Array) ? c[key].map(&:upcase).include?(term.to_s.upcase) : (c[key].upcase == term.to_s.upcase)
              end
              found
            }
          else
            @list.send(method){|c|
              c[field].is_a?(Array) ? c[field].map(&:upcase).include?(term.to_s.upcase) : (c[field].upcase == term.to_s.upcase)
            }
          end
        end

      end # ClassMethods

    end # Searchable
  end # Addresses
end # VST