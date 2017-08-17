require 'minitest/autorun'
require 'rack/test'
require_relative '../app'

describe App do
  include Rack::Test::Methods

  def app
    App.freeze.app
  end

  it 'instantiates itself successfully' do
    App.wont_be_nil
  end

  it 'responds successfully to a call to the root url' do
    get '/'
    last_response.ok?
  end
end
