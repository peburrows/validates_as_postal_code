$:.unshift(File.dirname(__FILE__) + '/../lib')

ENV['RAILS_ENV'] = 'test'

require File.expand_path(File.join(File.dirname(__FILE__), '../../../../config/environment.rb'))
require 'rubygems'
require 'test_help'

class ActiveSupport::TestCase

  def record_info_in_file(path, data)
    @f = File.new(File.join(File.dirname(__FILE__), path), "w+")
    @f << data
    @f.close
  end
  
end