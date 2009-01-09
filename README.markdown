## Usage

#### validates\_as\_postal\_code
<pre><code>
  # when :country parameter is a String,
  # validate as a postal code from a specific country
  validates_as_postal_code :postal_code, :country => 'United States'

  # when :country parameter is a Symbol
  # validate depending on the value of a specific field in the model
  validates_as_postal_code :postal_code, :country => :cardholder_country
</code></pre>

#### Country lists
<pre><code>
  # each of the following return a list of countries
  # with the following information for each country:
  # name, region, continent, ISO numeric code, ISO 2-letter code, ISO 3-letter code, postal code regular expression

  VST::Validations::Addresses.north_america
  # => [
  #       { :name => 'Canada',
  #         :numeric => '124',
  #         :alpha2 => 'CA',
  #         :alpha3 => 'CAN',
  #         :continent => 'North America',
  #         :region => 'North America',
  #         :postal_code => /^([A-Z]\d[A-Z][\-\s]?\d[A-Z](\d)?)$/i
  #       },
  #       { :name => 'United States',
  #         :numeric => '840',
  #         :alpha2 => 'US',
  #         :alpha3 => 'USA',
  #         :continent => 'North America',
  #         :region => 'North America',
  #         :postal_code => /^\d{5}([\-\s]?\d{4})?$/
  #       }
  #    ]

  VST::Validations::Addresses.eu
  # => same type of info for the 27 European Union countries
</code></pre>

### Caveats

Currenty supports the US, Canada and countries from the EU.
Also, **This is very much beta and things may change**
