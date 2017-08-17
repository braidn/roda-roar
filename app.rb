require 'roda'

class App < Roda # :nodoc:
  route do |r|
    r.root do
      response.status = 200
      response.headers['Content-Type'] = 'text/plain'
      response.write '<h1>You made it</h1>'
    end
  end
end
