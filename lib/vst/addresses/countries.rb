module VST
  module Addresses
    module Countries
      include VST::Addresses::Searchable

      postal5 = /^\d{5}$/
      postal4 = /^\d{4}$/
      postal6 = /^\d{6}$/

      COUNTRIES = [
        { :name => 'Austria',         :numeric => '040', :alpha2 => 'AT', :alpha3 => 'AUT', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Australia',       :numeric => '036', :alpha2 => 'AU', :alpha3 => 'AUS', :continent => 'Australia',     :region => ['Southern Hemisphere', 'Eastern Hemisphere', 'Australia'],      :postal_code => postal4 },
        { :name => 'Belgium',         :numeric => '056', :alpha2 => 'BE', :alpha3 => 'BEL', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Bulgaria',        :numeric => '100', :alpha2 => 'BG', :alpha3 => 'BGR', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Canada',          :numeric => '124', :alpha2 => 'CA', :alpha3 => 'CAN', :continent => 'North America', :region => ['Northern Hemisphere', 'Western Hemisphere', 'North America'],  :postal_code => /^([A-Z]\d[A-Z][\-\s]?\d[A-Z](\d)?)$/i },
        { :name => 'Cyprus',          :numeric => '196', :alpha2 => 'CY', :alpha3 => 'CYP', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Czech Republic',  :numeric => '203', :alpha2 => 'CZ', :alpha3 => 'CZE', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(CZ-)?\d{3}(\s)?\d{2}$/i },
        { :name => 'Denmark',         :numeric => '208', :alpha2 => 'DK', :alpha3 => 'DNK', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3,4}$/ },
        { :name => 'Estonia',         :numeric => '233', :alpha2 => 'EE', :alpha3 => 'EST', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(EE-)?\d{4,5}$/i },
        { :name => 'Finland',         :numeric => '246', :alpha2 => 'FI', :alpha3 => 'FIN', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'France',          :numeric => '249', :alpha2 => 'FR', :alpha3 => 'FRA', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Germany',         :numeric => '278', :alpha2 => 'DE', :alpha3 => 'DEU', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Greece',          :numeric => '300', :alpha2 => 'GR', :alpha3 => 'GRC', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'Hungary',         :numeric => '348', :alpha2 => 'HU', :alpha3 => 'HUN', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Ireland',         :numeric => '372', :alpha2 => 'IE', :alpha3 => 'IRL', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /.?/ },
        { :name => 'Italy',           :numeric => '380', :alpha2 => 'IT', :alpha3 => 'ITA', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Latvia',          :numeric => '428', :alpha2 => 'LV', :alpha3 => 'LVA', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /(LV-)?\d{4}^$/i },
        { :name => 'Lithuania',       :numeric => '440', :alpha2 => 'LT', :alpha3 => 'LTU', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(LT-)?\d{5}$/i },
        { :name => 'Luxembourg',      :numeric => '442', :alpha2 => 'LU', :alpha3 => 'LUX', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Malta',           :numeric => '470', :alpha2 => 'MT', :alpha3 => 'MLT', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^[A-Z]{3}(\s)?\d{4}$/i },
        { :name => 'Netherlands',     :numeric => '528', :alpha2 => 'NL', :alpha3 => 'NLD', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{4}(\s)?[A-Z]{2}(\s)?(\d*)?$/ },
        { :name => 'Poland',          :numeric => '616', :alpha2 => 'PL', :alpha3 => 'POL', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{2}[\-\s]?\d{3}$/ },
        { :name => 'Portugal',        :numeric => '620', :alpha2 => 'PT', :alpha3 => 'PRT', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{4}[\-\s]?\d{3}$/ },
        { :name => 'Romania',         :numeric => '642', :alpha2 => 'RO', :alpha3 => 'ROM', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{6}$/ },
        { :name => 'Slovakia',        :numeric => '703', :alpha2 => 'SK', :alpha3 => 'SVK', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(SK-)?\d{3}(\s)?\d{2}$/ },
        { :name => 'Slovenia',        :numeric => '705', :alpha2 => 'SI', :alpha3 => 'SVN', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(SL-)?\d{4}$/i },
        { :name => 'Spain',           :numeric => '724', :alpha2 => 'ES', :alpha3 => 'ESP', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Sweden',          :numeric => '752', :alpha2 => 'SE', :alpha3 => 'SWE', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'United Kingdom',  :numeric => '826', :alpha2 => 'GB', :alpha3 => 'GBR', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^[\dA-Z]{2,4}(\s)?[\dA-Z]{3}$/i },
        { :name => 'United States',   :numeric => '840', :alpha2 => 'US', :alpha3 => 'USA', :continent => 'North America', :region => ['Northern Hemisphere', 'Western Hemisphere', 'North America'],  :postal_code => /^\d{5}([\-\s]?\d{4})?$/ }
      ]

      # this is the eventual list of countries, but we must first fill in all the pertinent info before we can switch to this list
      # TODO: all the EU countries need their regional Europe distinction added, i.e. Southern Europe, South-Eastern Europe, etc.
      PRIVATE_COUNTRIES = [
        { :name => 'Afghanistan',                                :alpha2 => 'AF', :alpha3 => 'AFG', :numeric => '004', :continent => 'Asia',          :region => ['Central Asia', 'Southern Asia', 'Central Asia', 'South-Central Asia', 'Northern Hemisphere', 'Eastern Hemisphere'],  :postal_code => /./i },
        { :name => 'Albania',                                    :alpha2 => 'AL', :alpha3 => 'ALB', :numeric => '008', :continent => 'Europe',        :region => ['South-Eastern Europe', 'Southern Europe', 'Eastern Europe', 'Northern Hemisphere', 'Eastern Hemisphere'],            :postal_code => /./i },
        { :name => 'Algeria',                                    :alpha2 => 'DZ', :alpha3 => 'DZA', :numeric => '012', :continent => 'Africa',        :region => ['North Africa', 'Northern Hemisphere', 'Eastern Hemisphere', 'Western Hemisphere'],                                   :postal_code => postal4 },
        { :name => 'American Samoa',                             :alpha2 => 'AS', :alpha3 => 'ASM', :numeric => '016', :continent => 'Asia',          :region => ['South Pacific', 'United States Territory', 'Southern Hemisphere', 'Eastern Hemisphere'],                             :postal_code => /^\d{5}([\-\s]?\d{4})?$/ },
        { :name => 'Andorra',                                    :alpha2 => 'AD', :alpha3 => 'AND', :numeric => '020', :continent => 'Europe',        :region => ['Southern Europe', 'Western Europe', 'South-Western Europe', 'Northern Hemisphere', 'Eastern Hemisphere'],            :postal_code => /^[A-Z]{2}\d{3}$/i },
        { :name => 'Angola',                                     :alpha2 => 'AO', :alpha3 => 'AGO', :numeric => '024', :continent => 'Africa',        :region => ['Southern Africa', 'Central Africa', 'South-Central Africa', 'Southern Hemisphere', 'Eastern Hemisphere'],            :postal_code => /./i },
        { :name => 'Anguilla',                                   :alpha2 => 'AI', :alpha3 => 'AIA', :numeric => '660', :continent => 'North America', :region => ['Special Territory of the European Union', 'Carribean', 'Northern Hemisphere', 'Western Hemisphere'],                 :postal_code => /./i },
        { :name => 'Antigua and Barbuda',                        :alpha2 => 'AG', :alpha3 => 'ATG', :numeric => '028', :continent => 'North America', :region => ['Carribean', 'Northern Hemisphere', 'Western Hemisphere'],                                                            :postal_code => /./i },
        { :name => 'Argentina',                                  :alpha2 => 'AR', :alpha3 => 'ARG', :numeric => '032', :continent => 'South America', :region => ['Latin America''Northern Hemisphere', 'Western Hemisphere'],                                                          :postal_code => /^[A-Z]\d{4}[A-Z]{3}$/i },
        { :name => 'Armenia',                                    :alpha2 => 'AM', :alpha3 => 'ARM', :numeric => '051', :continent => 'Europe',        :region => ['Eastern Europe', 'Southern Europe', 'South-Eastern Europe', 'Northern Hemisphere', 'Eastern Hemisphere'],            :postal_code => /^\d{6}$/i },
        { :name => 'Aruba',                                      :alpha2 => 'AW', :alpha3 => 'ABW', :numeric => '533', :continent => 'North America', :region => ['Carribean', 'Central America', 'Northern Hemisphere', 'Eastern Hemisphere'],                                         :postal_code => /./i },
        { :name => 'Australia',                                  :alpha2 => 'AU', :alpha3 => 'AUS', :numeric => '036', :continent => 'Australia',     :region => ['Southern Hemisphere', 'Eastern Hemisphere', 'Australia', 'South Pacific'],                                           :postal_code => postal4 },
        { :name => 'Austria',                                    :alpha2 => 'AT', :alpha3 => 'AUT', :numeric => '040', :continent => 'Europe',        :region => ['EU', 'Northern Hemisphere', 'Eastern Hemisphere'],                                                                   :postal_code => postal4 },
        { :name => 'Åland Islands',                              :alpha2 => 'AX', :alpha3 => 'ALA', :numeric => '248', :continent => 'Europe',        :region => ['Northern Europe''Northern Hemisphere', 'Eastern Hemisphere'],                                                        :postal_code => /^([A-Z]{2})?[\-\s]?\d{5}$/i },
        { :name => 'Azerbaijan',                                 :alpha2 => 'AZ', :alpha3 => 'AZE', :numeric => '031', :continent => 'Europe',        :region => ['Eastern Europe', 'Southern Europe', 'South-Eastern Europe', 'Northern Hemisphere', 'Eastern Hemisphere'],            :postal_code => postal6 },
        { :name => 'Bahamas',                                    :alpha2 => 'BS', :alpha3 => 'BHS', :numeric => '044', :continent => 'North America', :region => ['Central America', 'Carribean', 'Northern Hemisphere', 'Western Hemisphere'],                                         :postal_code => /./i },
        { :name => 'Bahrain',                                    :alpha2 => 'BH', :alpha3 => 'BHR', :numeric => '048', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bangladesh',                                 :alpha2 => 'BD', :alpha3 => 'BGD', :numeric => '050', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Barbados',                                   :alpha2 => 'BB', :alpha3 => 'BRB', :numeric => '052', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Belarus',                                    :alpha2 => 'BY', :alpha3 => 'BLR', :numeric => '112', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Belgium',                                    :alpha2 => 'BE', :alpha3 => 'BEL', :numeric => '056', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],                                                                   :postal_code => postal4 },
        { :name => 'Belize',                                     :alpha2 => 'BZ', :alpha3 => 'BLZ', :numeric => '084', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Benin',                                      :alpha2 => 'BJ', :alpha3 => 'BEN', :numeric => '204', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bermuda',                                    :alpha2 => 'BM', :alpha3 => 'BMU', :numeric => '060', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bhutan',                                     :alpha2 => 'BT', :alpha3 => 'BTN', :numeric => '064', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bolivia',                                    :alpha2 => 'BO', :alpha3 => 'BOL', :numeric => '068', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bosnia and Herzegovina',                     :alpha2 => 'BA', :alpha3 => 'BIH', :numeric => '070', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Botswana',                                   :alpha2 => 'BW', :alpha3 => 'BWA', :numeric => '072', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Brazil',                                     :alpha2 => 'BR', :alpha3 => 'BRA', :numeric => '076', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Brunei Darussalam',                          :alpha2 => 'BN', :alpha3 => 'BRN', :numeric => '096', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Bulgaria',                                   :alpha2 => 'BG', :alpha3 => 'BGR', :numeric => '100', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],  :postal_code => postal4 },
        { :name => 'Burkina Faso',                               :alpha2 => 'BF', :alpha3 => 'BFA', :numeric => '854', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Burundi',                                    :alpha2 => 'BI', :alpha3 => 'BDI', :numeric => '108', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cambodia',                                   :alpha2 => 'KH', :alpha3 => 'KHM', :numeric => '116', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cameroon',                                   :alpha2 => 'CM', :alpha3 => 'CMR', :numeric => '120', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Canada',                                     :alpha2 => 'CA', :alpha3 => 'CAN', :numeric => '124', :continent => 'North America', :region => ['Northern Hemisphere', 'Western Hemisphere', 'North America'],  :postal_code => /^([A-Z]\d[A-Z][\-\s]?\d[A-Z](\d)?)$/i },
        { :name => 'Cape Verde',                                 :alpha2 => 'CV', :alpha3 => 'CPV', :numeric => '132', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cayman Islands',                             :alpha2 => 'KY', :alpha3 => 'CYM', :numeric => '136', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Central African Republic',                   :alpha2 => 'CF', :alpha3 => 'CAF', :numeric => '140', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Chad',                                       :alpha2 => 'TD', :alpha3 => 'TCD', :numeric => '148', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Chile',                                      :alpha2 => 'CL', :alpha3 => 'CHL', :numeric => '152', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'China',                                      :alpha2 => 'CN', :alpha3 => 'CHN', :numeric => '156', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Colombia',                                   :alpha2 => 'CO', :alpha3 => 'COL', :numeric => '170', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Comoros',                                    :alpha2 => 'KM', :alpha3 => 'COM', :numeric => '174', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Congo',                                      :alpha2 => 'CG', :alpha3 => 'COG', :numeric => '178', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Congo, the Democratic Republic of the',      :alpha2 => 'CD', :alpha3 => 'COD', :numeric => '180', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cook Islands',                               :alpha2 => 'CK', :alpha3 => 'COK', :numeric => '184', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Costa Rica',                                 :alpha2 => 'CR', :alpha3 => 'CRI', :numeric => '188', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cote D\'Ivoire',                             :alpha2 => 'CI', :alpha3 => 'CIV', :numeric => '384', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Croatia',                                    :alpha2 => 'HR', :alpha3 => 'HRV', :numeric => '191', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cuba',                                       :alpha2 => 'CU', :alpha3 => 'CUB', :numeric => '192', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Cyprus',                                     :alpha2 => 'CY', :alpha3 => 'CYP', :numeric => '196', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Czech Republic',                             :alpha2 => 'CZ', :alpha3 => 'CZE', :numeric => '203', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(CZ-)?\d{3}(\s)?\d{2}$/i },
        { :name => 'Denmark',                                    :alpha2 => 'DK', :alpha3 => 'DNK', :numeric => '208', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3,4}$/ },
        { :name => 'Djibouti',                                   :alpha2 => 'DJ', :alpha3 => 'DJI', :numeric => '262', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Dominica',                                   :alpha2 => 'DM', :alpha3 => 'DMA', :numeric => '212', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Dominican Republic',                         :alpha2 => 'DO', :alpha3 => 'DOM', :numeric => '214', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Ecuador',                                    :alpha2 => 'EC', :alpha3 => 'ECU', :numeric => '218', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Egypt',                                      :alpha2 => 'EG', :alpha3 => 'EGY', :numeric => '818', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'El Salvador',                                :alpha2 => 'SV', :alpha3 => 'SLV', :numeric => '222', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Equatorial Guinea',                          :alpha2 => 'GQ', :alpha3 => 'GNQ', :numeric => '226', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Eritrea',                                    :alpha2 => 'ER', :alpha3 => 'ERI', :numeric => '232', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Estonia',                                    :alpha2 => 'EE', :alpha3 => 'EST', :numeric => '233', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(EE-)?\d{4,5}$/i },
        { :name => 'Ethiopia',                                   :alpha2 => 'ET', :alpha3 => 'ETH', :numeric => '231', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Falkland Islands (Malvinas)',                :alpha2 => 'FK', :alpha3 => 'FLK', :numeric => '238', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Faroe Islands',                              :alpha2 => 'FO', :alpha3 => 'FRO', :numeric => '234', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Fiji',                                       :alpha2 => 'FJ', :alpha3 => 'FJI', :numeric => '242', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Finland',                                    :alpha2 => 'FI', :alpha3 => 'FIN', :numeric => '246', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'France',                                     :alpha2 => 'FR', :alpha3 => 'FRA', :numeric => '249', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'French Guiana',                              :alpha2 => 'GF', :alpha3 => 'GUF', :numeric => '254', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'French Polynesia',                           :alpha2 => 'PF', :alpha3 => 'PYF', :numeric => '258', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Gabon',                                      :alpha2 => 'GA', :alpha3 => 'GAB', :numeric => '266', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Gambia',                                     :alpha2 => 'GM', :alpha3 => 'GMB', :numeric => '270', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Georgia',                                    :alpha2 => 'GE', :alpha3 => 'GEO', :numeric => '268', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Germany',                                    :alpha2 => 'DE', :alpha3 => 'DEU', :numeric => '278', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Ghana',                                      :alpha2 => 'GH', :alpha3 => 'GHA', :numeric => '288', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Gibraltar',                                  :alpha2 => 'GI', :alpha3 => 'GIB', :numeric => '292', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Greece',                                     :alpha2 => 'GR', :alpha3 => 'GRC', :numeric => '300', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'Greenland',                                  :alpha2 => 'GL', :alpha3 => 'GRL', :numeric => '304', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Grenada',                                    :alpha2 => 'GD', :alpha3 => 'GRD', :numeric => '308', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guadeloupe',                                 :alpha2 => 'GP', :alpha3 => 'GLP', :numeric => '312', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guam',                                       :alpha2 => 'GU', :alpha3 => 'GUM', :numeric => '316', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guatemala',                                  :alpha2 => 'GT', :alpha3 => 'GTM', :numeric => '320', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guinea',                                     :alpha2 => 'GN', :alpha3 => 'GIN', :numeric => '324', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guinea-Bissau',                              :alpha2 => 'GW', :alpha3 => 'GNB', :numeric => '624', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Guyana',                                     :alpha2 => 'GY', :alpha3 => 'GUY', :numeric => '328', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Haiti',                                      :alpha2 => 'HT', :alpha3 => 'HTI', :numeric => '332', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Holy See (Vatican City State)',              :alpha2 => 'VA', :alpha3 => 'VAT', :numeric => '336', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Honduras',                                   :alpha2 => 'HN', :alpha3 => 'HND', :numeric => '340', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Hong Kong',                                  :alpha2 => 'HK', :alpha3 => 'HKG', :numeric => '344', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Hungary',                                    :alpha2 => 'HU', :alpha3 => 'HUN', :numeric => '348', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Iceland',                                    :alpha2 => 'IS', :alpha3 => 'ISL', :numeric => '352', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'India',                                      :alpha2 => 'IN', :alpha3 => 'IND', :numeric => '356', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Indonesia',                                  :alpha2 => 'ID', :alpha3 => 'IDN', :numeric => '360', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Iran, Islamic Republic of',                  :alpha2 => 'IR', :alpha3 => 'IRN', :numeric => '364', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Iraq',                                       :alpha2 => 'IQ', :alpha3 => 'IRQ', :numeric => '368', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Ireland',                                    :alpha2 => 'IE', :alpha3 => 'IRL', :numeric => '372', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /.?/ },
        { :name => 'Israel',                                     :alpha2 => 'IL', :alpha3 => 'ISR', :numeric => '376', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Italy',                                      :alpha2 => 'IT', :alpha3 => 'ITA', :numeric => '380', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Jamaica',                                    :alpha2 => 'JM', :alpha3 => 'JAM', :numeric => '388', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Japan',                                      :alpha2 => 'JP', :alpha3 => 'JPN', :numeric => '392', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Jordan',                                     :alpha2 => 'JO', :alpha3 => 'JOR', :numeric => '400', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Kazakhstan',                                 :alpha2 => 'KZ', :alpha3 => 'KAZ', :numeric => '398', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Kenya',                                      :alpha2 => 'KE', :alpha3 => 'KEN', :numeric => '404', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Kiribati',                                   :alpha2 => 'KI', :alpha3 => 'KIR', :numeric => '296', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Korea, Democratic People\'s Republic of',    :alpha2 => 'KP', :alpha3 => 'PRK', :numeric => '408', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Korea, Republic of',                         :alpha2 => 'KR', :alpha3 => 'KOR', :numeric => '410', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Kuwait',                                     :alpha2 => 'KW', :alpha3 => 'KWT', :numeric => '414', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Kyrgyzstan',                                 :alpha2 => 'KG', :alpha3 => 'KGZ', :numeric => '417', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Lao People\'s Democratic Republic',          :alpha2 => 'LA', :alpha3 => 'LAO', :numeric => '418', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Latvia',                                     :alpha2 => 'LV', :alpha3 => 'LVA', :numeric => '428', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /(LV-)?\d{4}^$/i },
        { :name => 'Lebanon',                                    :alpha2 => 'LB', :alpha3 => 'LBN', :numeric => '422', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Lesotho',                                    :alpha2 => 'LS', :alpha3 => 'LSO', :numeric => '426', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Liberia',                                    :alpha2 => 'LR', :alpha3 => 'LBR', :numeric => '430', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Libyan Arab Jamahiriya',                     :alpha2 => 'LY', :alpha3 => 'LBY', :numeric => '434', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Liechtenstein',                              :alpha2 => 'LI', :alpha3 => 'LIE', :numeric => '438', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Lithuania',                                  :alpha2 => 'LT', :alpha3 => 'LTU', :numeric => '440', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(LT-)?\d{5}$/i },
        { :name => 'Luxembourg',                                 :alpha2 => 'LU', :alpha3 => 'LUX', :numeric => '442', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal4 },
        { :name => 'Macao',                                      :alpha2 => 'MO', :alpha3 => 'MAC', :numeric => '446', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Macedonia, the Former Yugoslav Republic of', :alpha2 => 'MK', :alpha3 => 'MKD', :numeric => '807', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Madagascar',                                 :alpha2 => 'MG', :alpha3 => 'MDG', :numeric => '450', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Malawi',                                     :alpha2 => 'MW', :alpha3 => 'MWI', :numeric => '454', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Malaysia',                                   :alpha2 => 'MY', :alpha3 => 'MYS', :numeric => '458', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Maldives',                                   :alpha2 => 'MV', :alpha3 => 'MDV', :numeric => '462', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mali',                                       :alpha2 => 'ML', :alpha3 => 'MLI', :numeric => '466', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Malta',                                      :alpha2 => 'MT', :alpha3 => 'MLT', :numeric => '470', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^[A-Z]{3}(\s)?\d{4}$/i },
        { :name => 'Marshall Islands',                           :alpha2 => 'MH', :alpha3 => 'MHL', :numeric => '584', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Martinique',                                 :alpha2 => 'MQ', :alpha3 => 'MTQ', :numeric => '474', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mauritania',                                 :alpha2 => 'MR', :alpha3 => 'MRT', :numeric => '478', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mauritius',                                  :alpha2 => 'MU', :alpha3 => 'MUS', :numeric => '480', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mexico',                                     :alpha2 => 'MX', :alpha3 => 'MEX', :numeric => '484', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Micronesia, Federated States of',            :alpha2 => 'FM', :alpha3 => 'FSM', :numeric => '583', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Moldova, Republic of',                       :alpha2 => 'MD', :alpha3 => 'MDA', :numeric => '498', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Monaco',                                     :alpha2 => 'MC', :alpha3 => 'MCO', :numeric => '492', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mongolia',                                   :alpha2 => 'MN', :alpha3 => 'MNG', :numeric => '496', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Montserrat',                                 :alpha2 => 'MS', :alpha3 => 'MSR', :numeric => '500', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Morocco',                                    :alpha2 => 'MA', :alpha3 => 'MAR', :numeric => '504', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Mozambique',                                 :alpha2 => 'MZ', :alpha3 => 'MOZ', :numeric => '508', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Myanmar',                                    :alpha2 => 'MM', :alpha3 => 'MMR', :numeric => '104', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Namibia',                                    :alpha2 => 'NA', :alpha3 => 'NAM', :numeric => '516', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Nauru',                                      :alpha2 => 'NR', :alpha3 => 'NRU', :numeric => '520', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Nepal',                                      :alpha2 => 'NP', :alpha3 => 'NPL', :numeric => '524', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Netherlands',                                :alpha2 => 'NL', :alpha3 => 'NLD', :numeric => '528', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{4}(\s)?[A-Z]{2}(\s)?(\d*)?$/ },
        { :name => 'Netherlands Antilles',                       :alpha2 => 'AN', :alpha3 => 'ANT', :numeric => '530', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'New Caledonia',                              :alpha2 => 'NC', :alpha3 => 'NCL', :numeric => '540', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'New Zealand',                                :alpha2 => 'NZ', :alpha3 => 'NZL', :numeric => '554', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Nicaragua',                                  :alpha2 => 'NI', :alpha3 => 'NIC', :numeric => '558', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Niger',                                      :alpha2 => 'NE', :alpha3 => 'NER', :numeric => '562', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Nigeria',                                    :alpha2 => 'NG', :alpha3 => 'NGA', :numeric => '566', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Niue',                                       :alpha2 => 'NU', :alpha3 => 'NIU', :numeric => '570', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Norfolk Island',                             :alpha2 => 'NF', :alpha3 => 'NFK', :numeric => '574', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Northern Mariana Islands',                   :alpha2 => 'MP', :alpha3 => 'MNP', :numeric => '580', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Norway',                                     :alpha2 => 'NO', :alpha3 => 'NOR', :numeric => '578', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Oman',                                       :alpha2 => 'OM', :alpha3 => 'OMN', :numeric => '512', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Pakistan',                                   :alpha2 => 'PK', :alpha3 => 'PAK', :numeric => '586', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Palau',                                      :alpha2 => 'PW', :alpha3 => 'PLW', :numeric => '585', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Panama',                                     :alpha2 => 'PA', :alpha3 => 'PAN', :numeric => '591', :continent => 'North America', :region => [], :postal_code => /./i },
        { :name => 'Papua New Guinea',                           :alpha2 => 'PG', :alpha3 => 'PNG', :numeric => '598', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Paraguay',                                   :alpha2 => 'PY', :alpha3 => 'PRY', :numeric => '600', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Peru',                                       :alpha2 => 'PE', :alpha3 => 'PER', :numeric => '604', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Philippines',                                :alpha2 => 'PH', :alpha3 => 'PHL', :numeric => '608', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Pitcairn',                                   :alpha2 => 'PN', :alpha3 => 'PCN', :numeric => '612', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Poland',                                     :alpha2 => 'PL', :alpha3 => 'POL', :numeric => '616', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{2}[\-\s]?\d{3}$/ },
        { :name => 'Portugal',                                   :alpha2 => 'PT', :alpha3 => 'PRT', :numeric => '620', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{4}[\-\s]?\d{3}$/ },
        { :name => 'Puerto Rico',                                :alpha2 => 'PR', :alpha3 => 'PRI', :numeric => '630', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Qatar',                                      :alpha2 => 'QA', :alpha3 => 'QAT', :numeric => '634', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Reunion',                                    :alpha2 => 'RE', :alpha3 => 'REU', :numeric => '638', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Romania',                                    :alpha2 => 'RO', :alpha3 => 'ROM', :numeric => '642', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{6}$/ },
        { :name => 'Russian Federation',                         :alpha2 => 'RU', :alpha3 => 'RUS', :numeric => '643', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Rwanda',                                     :alpha2 => 'RW', :alpha3 => 'RWA', :numeric => '646', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saint Helena',                               :alpha2 => 'SH', :alpha3 => 'SHN', :numeric => '654', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saint Kitts and Nevis',                      :alpha2 => 'KN', :alpha3 => 'KNA', :numeric => '659', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saint Lucia',                                :alpha2 => 'LC', :alpha3 => 'LCA', :numeric => '662', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saint Pierre and Miquelon',                  :alpha2 => 'PM', :alpha3 => 'SPM', :numeric => '666', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saint Vincent and the Grenadines',           :alpha2 => 'VC', :alpha3 => 'VCT', :numeric => '670', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Samoa',                                      :alpha2 => 'WS', :alpha3 => 'WSM', :numeric => '882', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'San Marino',                                 :alpha2 => 'SM', :alpha3 => 'SMR', :numeric => '674', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Sao Tome and Principe',                      :alpha2 => 'ST', :alpha3 => 'STP', :numeric => '678', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Saudi Arabia',                               :alpha2 => 'SA', :alpha3 => 'SAU', :numeric => '682', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Senegal',                                    :alpha2 => 'SN', :alpha3 => 'SEN', :numeric => '686', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Seychelles',                                 :alpha2 => 'SC', :alpha3 => 'SYC', :numeric => '690', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Sierra Leone',                               :alpha2 => 'SL', :alpha3 => 'SLE', :numeric => '694', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Singapore',                                  :alpha2 => 'SG', :alpha3 => 'SGP', :numeric => '702', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Slovakia',                                   :alpha2 => 'SK', :alpha3 => 'SVK', :numeric => '703', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(SK-)?\d{3}(\s)?\d{2}$/ },
        { :name => 'Slovenia',                                   :alpha2 => 'SI', :alpha3 => 'SVN', :numeric => '705', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^(SL-)?\d{4}$/i },
        { :name => 'Solomon Islands',                            :alpha2 => 'SB', :alpha3 => 'SLB', :numeric => '090', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Somalia',                                    :alpha2 => 'SO', :alpha3 => 'SOM', :numeric => '706', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'South Africa',                               :alpha2 => 'ZA', :alpha3 => 'ZAF', :numeric => '710', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Spain',                                      :alpha2 => 'ES', :alpha3 => 'ESP', :numeric => '724', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => postal5 },
        { :name => 'Sri Lanka',                                  :alpha2 => 'LK', :alpha3 => 'LKA', :numeric => '144', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Sudan',                                      :alpha2 => 'SD', :alpha3 => 'SDN', :numeric => '736', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Suriname',                                   :alpha2 => 'SR', :alpha3 => 'SUR', :numeric => '740', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Svalbard and Jan Mayen',                     :alpha2 => 'SJ', :alpha3 => 'SJM', :numeric => '744', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Swaziland',                                  :alpha2 => 'SZ', :alpha3 => 'SWZ', :numeric => '748', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Sweden',                                     :alpha2 => 'SE', :alpha3 => 'SWE', :numeric => '752', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^\d{3}(\s)?\d{2}$/ },
        { :name => 'Switzerland',                                :alpha2 => 'CH', :alpha3 => 'CHE', :numeric => '756', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Syrian Arab Republic',                       :alpha2 => 'SY', :alpha3 => 'SYR', :numeric => '760', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Taiwan, Province of China',                  :alpha2 => 'TW', :alpha3 => 'TWN', :numeric => '158', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tajikistan',                                 :alpha2 => 'TJ', :alpha3 => 'TJK', :numeric => '762', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tanzania, United Republic of',               :alpha2 => 'TZ', :alpha3 => 'TZA', :numeric => '834', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Thailand',                                   :alpha2 => 'TH', :alpha3 => 'THA', :numeric => '764', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Togo',                                       :alpha2 => 'TG', :alpha3 => 'TGO', :numeric => '768', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tokelau',                                    :alpha2 => 'TK', :alpha3 => 'TKL', :numeric => '772', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tonga',                                      :alpha2 => 'TO', :alpha3 => 'TON', :numeric => '776', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Trinidad and Tobago',                        :alpha2 => 'TT', :alpha3 => 'TTO', :numeric => '780', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tunisia',                                    :alpha2 => 'TN', :alpha3 => 'TUN', :numeric => '788', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Turkey',                                     :alpha2 => 'TR', :alpha3 => 'TUR', :numeric => '792', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Turkmenistan',                               :alpha2 => 'TM', :alpha3 => 'TKM', :numeric => '795', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Turks and Caicos Islands',                   :alpha2 => 'TC', :alpha3 => 'TCA', :numeric => '796', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Tuvalu',                                     :alpha2 => 'TV', :alpha3 => 'TUV', :numeric => '798', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Uganda',                                     :alpha2 => 'UG', :alpha3 => 'UGA', :numeric => '800', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Ukraine',                                    :alpha2 => 'UA', :alpha3 => 'UKR', :numeric => '804', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'United Arab Emirates',                       :alpha2 => 'AE', :alpha3 => 'ARE', :numeric => '784', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'United Kingdom',                             :alpha2 => 'GB', :alpha3 => 'GBR', :numeric => '826', :continent => 'Europe',        :region => ['Northern Hemisphere', 'Eastern Hemisphere', 'EU'],             :postal_code => /^[\dA-Z]{2,4}(\s)?[\dA-Z]{3}$/i },
        { :name => 'United States',                              :alpha2 => 'US', :alpha3 => 'USA', :numeric => '840', :continent => 'North America', :region => ['Northern Hemisphere', 'Western Hemisphere', 'North America'],  :postal_code => /^\d{5}([\-\s]?\d{4})?$/ },
        { :name => 'United States Minor Outlying Islands',       :alpha2 => 'UM', :alpha3 => 'UMI', :numeric => '849', :continent => 'North America', :region => ['Northern Hemisphere', 'Western Hemisphere', 'North America'],  :postal_code => /^\d{5}([\-\s]?\d{4})?$/ },
        { :name => 'Uruguay',                                    :alpha2 => 'UY', :alpha3 => 'URY', :numeric => '858', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Uzbekistan',                                 :alpha2 => 'UZ', :alpha3 => 'UZB', :numeric => '860', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Vanuatu',                                    :alpha2 => 'VU', :alpha3 => 'VUT', :numeric => '548', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Venezuela',                                  :alpha2 => 'VE', :alpha3 => 'VEN', :numeric => '862', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Viet Nam',                                   :alpha2 => 'VN', :alpha3 => 'VNM', :numeric => '704', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Virgin Islands, British',                    :alpha2 => 'VG', :alpha3 => 'VGB', :numeric => '092', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Virgin Islands, U.S.',                       :alpha2 => 'VI', :alpha3 => 'VIR', :numeric => '850', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Wallis and Futuna',                          :alpha2 => 'WF', :alpha3 => 'WLF', :numeric => '876', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Western Sahara',                             :alpha2 => 'EH', :alpha3 => 'ESH', :numeric => '732', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Yemen',                                      :alpha2 => 'YE', :alpha3 => 'YEM', :numeric => '887', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Zambia',                                     :alpha2 => 'ZM', :alpha3 => 'ZMB', :numeric => '894', :continent => 'Europe', :region => [], :postal_code => /./i },
        { :name => 'Zimbabwe',                                   :alpha2 => 'ZW', :alpha3 => 'ZWE', :numeric => '716', :continent => 'Europe', :region => [], :postal_code => /./i }
      ]

      searchable_config do |c|
        # c.list        = COUNTRIES
        c.list        = PRIVATE_COUNTRIES
        c.attributes  = [:name, :numeric, :alpha2, :alpha3, :continent, :region]
        c.aliases     = [
                          {:abbr          => [:alpha2, :alpha3] },
                          {:abbreviation  => [:alpha2, :alpha3] },
                          {:iso           => :numeric },
                          {:iso_code      => :numeric },
                          {:code          => :numeric}
                        ]
      end

      def self.countries
        PRIVATE_COUNTRIES
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
        find_all('North America', :region)
      end
      def self.north_america?(cty)
        in_this_region?(cty, :north_america)
      end

      def self.eu
        find_all('EU', :region)
      end
      def self.eu?(cty)
        in_this_region?(cty, :eu)
      end

      def self.where_is_zip_valid(zip)
        countries.select{|c| zip =~ c[:postal_code] } # .sort{|a,b| a[:priority] <=> b[:priority] }
      end

      def self.region(cty)
        case
        when in_this_region?(cty, :north_america) : :north_america
        when in_this_region?(cty, :eu) : :eu
        else
          nil
        end
      end

    protected
      def self.in_this_region?(cty, region)
        cty = cty.is_a?(Hash) ? cty[:name] : cty
        send(region).collect{|c| c[:name]}.include?(cty)
      end

    end # module Countries
  end # module Addresses
end # module VST