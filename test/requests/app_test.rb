require 'rack/test'
require_relative '../../app'

describe App do
  include Rack::Test::Methods

  def app
    App.freeze.app
  end

  it 'instantiates itself successfully' do
    app.wont_be_nil
  end

  describe 'root (/) path' do
    before do
      get '/'
    end

    it 'responds successfully' do
      last_response.ok?
    end
  end
end
