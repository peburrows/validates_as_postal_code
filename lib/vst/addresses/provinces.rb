module VST
  module Addresses
    module Provinces
      include VST::Addresses::Searchable

      PROVINCES = [
        {:name => 'ALBERTA',                          :alpha => 'AB'},
        {:name => 'BRITISH COLUMBIA',                 :alpha => 'BC'},
        {:name => 'MANITOBA',                         :alpha => 'MT'},
        {:name => 'NEW BRUNSWICK',                    :alpha => 'NB'},
        {:name => 'NEWFOUNDLAND AND LABRADOR',        :alpha => 'NL'},
        {:name => 'NORTHWEST TERRITORIES',            :alpha => 'NT'},
        {:name => 'NOVA SCOTIA',                      :alpha => 'NS'},
        {:name => 'NUNAVUT',                          :alpha => 'NV'},
        {:name => 'ONTARIO',                          :alpha => 'ON'},
        {:name => 'PRINCE EDWARD ISLAND',             :alpha => 'PE'},
        {:name => 'QUEBEC',                           :alpha => 'QB'},
        {:name => 'SASKATCHEWAN',                     :alpha => 'SK'},
        {:name => 'YUKON',                            :alpha => 'YK'}
      ]

      searchable_config do |c|
        c.list        = PROVINCES
        c.attributes  = [:name, :alpha]
        c.aliases     = [ {:abbr          => :alpha},
                          {:abbreviation  => :alpha} ]
      end

      def self.provinces
        PROVINCES.dup
      end

      def self.names(_cty=self.provinces)
        _cty.collect{|c| c[:name]}
      end

      def self.abbreviations(_cty=self.provinces)
        _cty.collect{|c| c[:alpha] }
      end

    end
  end
end