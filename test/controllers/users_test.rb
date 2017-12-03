require 'minitest/autorun'
require 'rack/test'
require 'mocha/mini_test'

require './app.rb'
require './test/fabricators/user_fabricator'

describe Users do
  include Rack::Test::Methods

  def app
    App.freeze.app
  end

  it 'instantiates itself successfully' do
    app.wont_be_nil
  end

  before do
    @user = Fabricate(:user)
    User.expects(:all).returns([@user])

    header 'Accept', 'application/vnd.api+json'
    get '/users'
  end

  after(:all) do
    @user.delete
  end

  it 'responds successfully' do
    last_response.status == 200
  end

  it 'returns a list of availble users' do
    last_response.body.must_include @user.first_name
  end
end
