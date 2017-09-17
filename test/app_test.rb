require 'minitest/autorun'
require 'rack/test'
require './test/fabricators/user_fabricator'
require './repo/models/user'
require_relative '../app'

describe App do
  include Rack::Test::Methods

  def app
    App.freeze.app
  end

  it 'instantiates itself successfully' do
    App.wont_be_nil
  end

  describe 'root (/) path' do
    before do
      @user = Fabricate(:user)

      User.stub :all, [@user] do
        header 'Accept', 'application/vnd.api+json'
        get '/'
      end
    end

    it 'responds successfully' do
      last_response.ok?
    end

    it 'returns a list of availble users' do
      last_response.body.must_include @user.first_name
    end
  end
end
