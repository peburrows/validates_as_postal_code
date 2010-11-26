require File.expand_path(File.join(File.dirname(__FILE__), 'helper.rb'))

class TestVSTAddressesCountries < ActiveSupport::TestCase

  def test_find_by_name_returns_proper_country
    assert_equal 'United States', VST::Addresses::Countries.find_by_name('United States')[:name]
    assert_equal '249',           VST::Addresses::Countries.find_by_name('France')[:numeric]
  end
  
  def test_find_by_name_is_case_insensitive
    assert_equal 'CZE', VST::Addresses::Countries.find_by_name('CzEcH REPublIC')[:alpha3]
    assert_equal 'SK',  VST::Addresses::Countries.find_by_name('SLOvakia')[:alpha2]
  end
  
  def test_find_by_alpha2
    assert_equal 'USA', VST::Addresses::Countries.find_by_alpha2('US')[:alpha3]
  end
  
  def test_find_by_alpha3
    assert_equal 'US', VST::Addresses::Countries.find_by_alpha3('USA')[:alpha2]
  end
  
  def test_the_regular_old_find_method_with_multiple_field_search
    assert_equal 'US', VST::Addresses::Countries.find('United States', [:name, :alpha2, :alpha3])[:alpha2]
    assert_equal 'AU', VST::Addresses::Countries.find('AU', [:name, :alpha2, :alpha3])[:alpha2]
    assert_equal 'France', VST::Addresses::Countries.find('249', [:iso_code, :name])[:name]
  end
  
  def test_find_by_methods_return_same_object
    assert_equal VST::Addresses::Countries.find_by_alpha3('USA'), VST::Addresses::Countries.find_by_alpha2('US')
    assert_equal VST::Addresses::Countries.find_by_abbr('US'), VST::Addresses::Countries.find_by_name('United States')
    assert_equal VST::Addresses::Countries.find_by_iso_code('840'), VST::Addresses::Countries.find_by_abbr('USA')
  end
  
  def test_method_where_is_this_zip_valid?
    assert_equal 1, VST::Addresses::Countries.where_is_zip_valid('123KKK9093450').length
    assert VST::Addresses::Countries.where_is_zip_valid('67013').include?(VST::Addresses::Countries.find_by_abbr('USA')), "the US wasn't included in the list of countries where the zip was valid"
  end

  def test_method_eu?
    assert VST::Addresses::Countries.eu?('France')
    assert VST::Addresses::Countries.eu?('Czech Republic')
    assert VST::Addresses::Countries.eu?(VST::Addresses::Countries.find_by_name('United Kingdom'))
    assert !VST::Addresses::Countries.eu?('United States')
    assert !VST::Addresses::Countries.eu?(VST::Addresses::Countries.find_by_name('Canada'))
  end

  def test_method_north_america?
    assert VST::Addresses::Countries.north_america?('Canada')
    assert VST::Addresses::Countries.north_america?('United States')
    assert VST::Addresses::Countries.north_america?(VST::Addresses::Countries.find_by_name('United States'))
    assert !VST::Addresses::Countries.north_america?('United Kingdom')
    assert !VST::Addresses::Countries.north_america?(VST::Addresses::Countries.find_by_name('France'))
  end

  def test_find_by_abbr_returns_proper_country
    assert_equal 'USA', VST::Addresses::Countries.find_by_abbr('USA')[:alpha3]
    assert_equal 'US',  VST::Addresses::Countries.find_by_abbr('US')[:alpha2]
    assert_equal 'ESP', VST::Addresses::Countries.find_by_abbr('ESP')[:alpha3]
    assert_equal 'ES',  VST::Addresses::Countries.find_by_abbr('ES')[:alpha2]
  end

  def test_regional_shortcut_methods
    assert_equal 2,   VST::Addresses::Countries.north_america.length, "North America was incorrect"
    assert_equal 27,  VST::Addresses::Countries.eu.length, "the EU was incorrect"
  end
  
  def test_find_all_by_region_returns_proper_results
    assert_equal 2,   VST::Addresses::Countries.find_all_by_region('North America').length, "North America was incorrect"
    assert_equal 27,  VST::Addresses::Countries.find_all_by_region('EU').length, "the EU was incorrect"
    assert_equal 29,  VST::Addresses::Countries.find_all_by_region('Northern Hemisphere').length, "Northern Hemispere was incorrect"
    assert_equal 2,   VST::Addresses::Countries.find_all_by_region('Western Hemisphere').length
  end
  
end