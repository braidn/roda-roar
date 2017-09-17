require 'roda'
require './representers/users_representer'
require './repo/models/user'

class App < Roda # :nodoc:
  route do |r|
    r.root do
      response.status = 200
      response.headers['Content-Type'] = 'application/vnd.api+json'
      response.write json_users
    end
  end

  private

  def json_users
    ::UsersRepresenter.for_collection.prepare(users).to_json
  end

  def users
    User.all
  end
end
