module ActiveRecord
  module Validations
    module ClassMethods

      # this validation requires that the model also have a :country attribute, (or pass in a :country option)
      # because postal code validation is different for different countries
      def validates_as_postal_code(*attr_names)
        configuration = {
          :country => 'USA',
          :message => 'is not the correct format',
          :allow_nil => false,
          :on => :save
        }
        
        configuration.update(attr_names.pop) if attr_names.last.is_a?(Hash)

        validates_each(attr_names, configuration) do |record, attr_name, value|
          country = configuration[:country].is_a?(Symbol) ? record.send(configuration[:country]) : configuration[:country]
          
          VST::Validations::Addresses.countries.each do |config|
            if country =~ /^(#{config[:name]}|#{config[:alpha2]}|#{config[:alpha3]})$/i
              configuration[:with] = config[:postal_code]
            end
          end
          
          # if it didn't match any of the countries, add an error to base and set the regex to nil
          unless configuration[:with]
            configuration[:with] = nil
            record.errors.add_to_base("a valid country must be provided for #{attr_name} validation :: Supported countries are United States, Canada and EU countries.")
          end
          
          unless value.to_s =~ configuration[:with]
            record.errors.add(attr_name, configuration[:message])
          end
        end
      end

    end
  end
end