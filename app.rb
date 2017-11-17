require 'roda'
require './controllers/users'

class App < Roda # :nodoc:
  route do |r|
    r.root do
      response.status = 200
      response.headers['Content-Type'] = 'text/plain'
      response.write 'Not A Viable Route'
    end

    r.on 'users' do
      r.run Users
    end
  end
end
