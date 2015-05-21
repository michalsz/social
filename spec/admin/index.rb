ENV['RACK_ENV'] = 'test'

require 'rubygems'
require File.join(File.dirname(__FILE__), '../../index.rb')
require 'test/unit'
require 'rack/test'

class SociaAdminTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Social::Admin
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Admin index', last_response.body
  end
end