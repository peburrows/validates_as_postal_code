module VST
  module Addresses
    module States
      include VST::Addresses::Searchable

      # TODO: Titlecase state names (instead of uppercase)

      STATES = [
        { :name => 'ALABAMA',                         :alpha => 'AL' },
        { :name => 'ALASKA',                          :alpha => 'AK' },
        { :name => 'AMERICAN SAMOA',                  :alpha => 'AS' },
        { :name => 'ARIZONA',                         :alpha => 'AZ' },
        { :name => 'ARKANSAS',                        :alpha => 'AR' },
        { :name => 'CALIFORNIA',                      :alpha => 'CA' },
        { :name => 'COLORADO',                        :alpha => 'CO' },
        { :name => 'CONNECTICUT',                     :alpha => 'CT' },
        { :name => 'DELAWARE',                        :alpha => 'DE' },
        { :name => 'DISTRICT OF COLUMBIA',            :alpha => 'DC' },
        { :name => 'FEDERATED STATES OF MICRONESIA',  :alpha => 'FM' },
        { :name => 'FLORIDA',                         :alpha => 'FL' },
        { :name => 'GEORGIA',                         :alpha => 'GA' },
        { :name => 'GUAM',                            :alpha => 'GU' },
        { :name => 'HAWAII',                          :alpha => 'HI' },
        { :name => 'IDAHO',                           :alpha => 'ID' },
        { :name => 'ILLINOIS',                        :alpha => 'IL' },
        { :name => 'INDIANA',                         :alpha => 'IN' },
        { :name => 'IOWA',                            :alpha => 'IA' },
        { :name => 'KANSAS',                          :alpha => 'KS' },
        { :name => 'KENTUCKY',                        :alpha => 'KY' },
        { :name => 'LOUISIANA',                       :alpha => 'LA' },
        { :name => 'MAINE',                           :alpha => 'ME' },
        { :name => 'MARSHALL ISLANDS',                :alpha => 'MH' },
        { :name => 'MARYLAND',                        :alpha => 'MD' },
        { :name => 'MASSACHUSETTS',                   :alpha => 'MA' },
        { :name => 'MICHIGAN',                        :alpha => 'MI' },
        { :name => 'MINNESOTA',                       :alpha => 'MN' },
        { :name => 'MISSISSIPPI',                     :alpha => 'MS' },
        { :name => 'MISSOURI',                        :alpha => 'MO' },
        { :name => 'MONTANA',                         :alpha => 'MT' },
        { :name => 'NEBRASKA',                        :alpha => 'NE' },
        { :name => 'NEVADA',                          :alpha => 'NV' },
        { :name => 'NEW HAMPSHIRE',                   :alpha => 'NH' },
        { :name => 'NEW JERSEY',                      :alpha => 'NJ' },
        { :name => 'NEW MEXICO',                      :alpha => 'NM' },
        { :name => 'NEW YORK',                        :alpha => 'NY' },
        { :name => 'NORTH CAROLINA',                  :alpha => 'NC' },
        { :name => 'NORTH DAKOTA',                    :alpha => 'ND' },
        { :name => 'NORTHERN MARIANA ISLANDS',        :alpha => 'MP' },
        { :name => 'OHIO',                            :alpha => 'OH' },
        { :name => 'OKLAHOMA',                        :alpha => 'OK' },
        { :name => 'OREGON',                          :alpha => 'OR' },
        { :name => 'PALAU',                           :alpha => 'PW' },
        { :name => 'PENNSYLVANIA',                    :alpha => 'PA' },
        { :name => 'PUERTO RICO',                     :alpha => 'PR' },
        { :name => 'RHODE ISLAND',                    :alpha => 'RI' },
        { :name => 'SOUTH CAROLINA',                  :alpha => 'SC' },
        { :name => 'SOUTH DAKOTA',                    :alpha => 'SD' },
        { :name => 'TENNESSEE',                       :alpha => 'TN' },
        { :name => 'TEXAS',                           :alpha => 'TX' },
        { :name => 'UTAH',                            :alpha => 'UT' },
        { :name => 'VERMONT',                         :alpha => 'VT' },
        { :name => 'VIRGIN ISLANDS',                  :alpha => 'VI' },
        { :name => 'VIRGINIA',                        :alpha => 'VA' },
        { :name => 'WASHINGTON',                      :alpha => 'WA' },
        { :name => 'WEST VIRGINIA',                   :alpha => 'WV' },
        { :name => 'WISCONSIN',                       :alpha => 'WI' },
        { :name => 'WYOMING',                         :alpha => 'WY' }
      ]

      searchable_config do |c|
        c.list        = STATES
        c.attributes  = [:name, :alpha]
        c.aliases     = [ {:abbr          => :alpha},
                          {:abbreviation  => :alpha} ]
      end

      def self.states
        STATES.dup
      end

      def self.names(_cty=self.states)
        _cty.collect{|c| c[:name]}
      end
      def self.abbreviations(_cty=self.states)
        _cty.collect{|c| c[:alpha] }
      end

    protected

      def self.find_collection(terms, field=:name)
        terms = terms.is_a?(Array) ? terms : terms.to_a
        results =[]
        terms.each do |term|
          r = find(term, field)
          results << r if r
        end
        results
      end

    end # States
  end # Addresses
end # VST