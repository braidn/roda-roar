require 'roar/json/json_api'

class UsersRepresenter < Roar::Decorator # :nodoc:
  include Roar::JSON::JSONAPI.resource :users

  attributes do
    property :first_name
    property :last_name
  end
end
