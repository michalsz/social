ENV['RACK_ENV'] = 'test'

require 'rubygems'
require File.join(File.dirname(__FILE__), '../../index.rb')
require 'test/unit'
require 'rack/test'

class SocialMainTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Social::Main
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Main index', last_response.body
  end
end