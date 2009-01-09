module VST
  module Validations
    module Addresses
      eu4postal = /^\d{4}$/
      eu5postal = /^\d{5}$/
      COUNTRIES = [
        { :name => 'Austria',         :numeric => '040', :alpha2 => 'AT', :alpha3 => 'AUT', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Belgium',         :numeric => '056', :alpha2 => 'BE', :alpha3 => 'BEL', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Bulgaria',        :numeric => '100', :alpha2 => 'BG', :alpha3 => 'BGR', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Canada',          :numeric => '124', :alpha2 => 'CA', :alpha3 => 'CAN', :continent => 'North America',  :region => 'North America', :postal_code => /^([A-Z]\d[A-Z][\-\s]?\d[A-Z](\d)?)$/i },
        { :name => 'Cyprus',          :numeric => '196', :alpha2 => 'CY', :alpha3 => 'CYP', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Czech Republic',  :numeric => '203', :alpha2 => 'CZ', :alpha3 => 'CZE', :continent => 'Europe',         :region => 'EU', :postal_code => /^(CZ-)?\d{3}(\s)?\d{2}$/i },
        { :name => 'Denmark',         :numeric => '208', :alpha2 => 'DK', :alpha3 => 'DNK', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{3,4}$/ },
        { :name => 'Estonia',         :numeric => '233', :alpha2 => 'EE', :alpha3 => 'EST', :continent => 'Europe',         :region => 'EU', :postal_code => /^(EE-)?\d{4,5}$/i },
        { :name => 'Finland',         :numeric => '246', :alpha2 => 'FI', :alpha3 => 'FIN', :continent => 'Europe',         :region => 'EU', :postal_code => eu5postal },
        { :name => 'France',          :numeric => '249', :alpha2 => 'FR', :alpha3 => 'FRA', :continent => 'Europe',         :region => 'EU', :postal_code => eu5postal },
        { :name => 'Germany',         :numeric => '278', :alpha2 => 'DE', :alpha3 => 'DEU', :continent => 'Europe',         :region => 'EU', :postal_code => eu5postal },
        { :name => 'Greece',          :numeric => '300', :alpha2 => 'GR', :alpha3 => 'GRC', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'Hungary',         :numeric => '348', :alpha2 => 'HU', :alpha3 => 'HUN', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Ireland',         :numeric => '372', :alpha2 => 'IE', :alpha3 => 'IRL', :continent => 'Europe',         :region => 'EU', :postal_code => /.?/ },
        { :name => 'Italy',           :numeric => '380', :alpha2 => 'IT', :alpha3 => 'ITA', :continent => 'Europe',         :region => 'EU', :postal_code => eu5postal },
        { :name => 'Latvia',          :numeric => '428', :alpha2 => 'LV', :alpha3 => 'LVA', :continent => 'Europe',         :region => 'EU', :postal_code => /(LV-)?\d{4}^$/i },
        { :name => 'Lithuania',       :numeric => '440', :alpha2 => 'LT', :alpha3 => 'LTU', :continent => 'Europe',         :region => 'EU', :postal_code => /^(LT-)?\d{5}$/i },
        { :name => 'Luxembourg',      :numeric => '442', :alpha2 => 'LU', :alpha3 => 'LUX', :continent => 'Europe',         :region => 'EU', :postal_code => eu4postal },
        { :name => 'Malta',           :numeric => '470', :alpha2 => 'MT', :alpha3 => 'MLT', :continent => 'Europe',         :region => 'EU', :postal_code => /^[A-Z]{3}(\s)?\d{4}$/i },
        { :name => 'Netherlands',     :numeric => '528', :alpha2 => 'NL', :alpha3 => 'NLD', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{4}(\s)?[A-Z]{2}(\s)?(\d*)?$/ },
        { :name => 'Poland',          :numeric => '616', :alpha2 => 'PL', :alpha3 => 'POL', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{2}[\-\s]?\d{3}$/ },
        { :name => 'Portugal',        :numeric => '620', :alpha2 => 'PT', :alpha3 => 'PRT', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{4}[\-\s]?\d{3}$/ },
        { :name => 'Romania',         :numeric => '642', :alpha2 => 'RO', :alpha3 => 'ROM', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{6}$/ },
        { :name => 'Slovakia',        :numeric => '703', :alpha2 => 'SK', :alpha3 => 'SVK', :continent => 'Europe',         :region => 'EU', :postal_code => /^(SK-)?\d{3}(\s)?\d{2}$/ },
        { :name => 'Slovenia',        :numeric => '705', :alpha2 => 'SI', :alpha3 => 'SVN', :continent => 'Europe',         :region => 'EU', :postal_code => /^(SL-)?\d{4}$/i },
        { :name => 'Spain',           :numeric => '724', :alpha2 => 'ES', :alpha3 => 'ESP', :continent => 'Europe',         :region => 'EU', :postal_code => eu5postal },
        { :name => 'Sweden',          :numeric => '752', :alpha2 => 'SE', :alpha3 => 'SWE', :continent => 'Europe',         :region => 'EU', :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'United Kingdom',  :numeric => '826', :alpha2 => 'GB', :alpha3 => 'GBR', :continent => 'Europe',         :region => 'EU', :postal_code => /^[\dA-Z]{2,4}(\s)?[\dA-Z]{3}$/i },
        { :name => 'United States',   :numeric => '840', :alpha2 => 'US', :alpha3 => 'USA', :continent => 'North America',  :region => 'North America', :postal_code => /^\d{5}([\-\s]?\d{4})?$/ }
      ]
    
      def self.countries
        COUNTRIES
      end
    
      def self.names(_cty=self.countries)
        _cty.collect{|c| c[:name]}
      end
      def self.abbreviations(_cty=self.countries)
        _cty.collect{|c| [c[:alpha2], c[:alpha3]] }
      end
      def self.iso_codes(_cty=self.countries)
        _cty.collect{|c| c[:numeric]}
      end
    
      def self.north_america
        find_by_region('North America')
      end
      def self.north_america?(cty)
        in_this_region?(cty, :north_america)
      end

      def self.eu
        find_by_region('EU')
      end
      def self.eu?(cty)
        in_this_region?(cty, :eu)
      end
    
      def self.region(cty)
        case
        when in_this_region?(cty, :north_america) : :north_america
        when in_this_region?(cty, :eu) : :eu
        else
          nil
        end
      end
    
      def self.find(term, search_what=:name)
        search_what = case search_what
        when :iso, :iso_code, :code
          :numeric
        when :abbr, :abbreviation
          term.length == 2 ? :alpha2 : :alpha3
        else
          nil
        end unless [:name, :numeric, :alpha2, :alpha3].include?(search_what)

        if search_what.is_a?(Array)
          countries.find{|c|
            found = false
            search_what.each do |key|
              next if found
              found = true if c[key] == term
            end
            found
          }
        else
          countries.find{|c| c[search_what] == term}
        end
      end
    
    protected
      def self.method_missing(method, *args, &block)
        m = method.to_s.match(/^find_by_(.+)$/i)
        return super unless m && args.length == 1
        find(args.first, m.captures.first.to_sym)
      end
    
      def self.find_collection(terms, field=:name)
        terms = terms.is_a?(Array) ? terms : terms.to_a
        results =[]
        terms.each do |term|
          r = find(term, field)
          results << r if r
        end
        results
      end
      
      def self.in_this_region?(cty, region)
        cty = cty.is_a?(Hash) ? cty[:name] : cty
        send(region).collect{|c| c[:name]}.include?(cty)
      end
    
    end # module Addresses
  end # module Validations
end # module VST