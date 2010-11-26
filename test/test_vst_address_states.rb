require File.expand_path(File.join(File.dirname(__FILE__), 'helper.rb'))

class TestVSTAddressesStates < ActiveSupport::TestCase
  
  def test_states_find_by_name_returns_proper_results
    assert_equal 'KANSAS', VST::Addresses::States.find_by_name('Kansas')[:name]
    assert_equal 'WASHINGTON', VST::Addresses::States.find_by_name('Washington')[:name]
    assert_equal 'ARKANSAS', VST::Addresses::States.find_by_name('Arkansas')[:name]
  end
  
  def test_states_find_by_name_is_case_insensitive
    assert_equal 'KANSAS', VST::Addresses::States.find_by_name('KaNSaS')[:name]
    assert_equal 'ARKANSAS', VST::Addresses::States.find_by_name('ARKansAS')[:name]
    assert_equal 'TEXAS', VST::Addresses::States.find_by_name('texAs')[:name]
  end
  
  def test_states_find_by_abbr
    assert_equal 'KANSAS', VST::Addresses::States.find_by_abbr('KS')[:name]
    assert_equal 'ARKANSAS', VST::Addresses::States.find_by_abbr('AR')[:name]
    assert_equal 'ALASKA', VST::Addresses::States.find_by_abbr('AK')[:name]
  end
  
  def test_states_names_method
    assert_equal 59, VST::Addresses::States.names.length
  end
  
end