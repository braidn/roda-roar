require 'fabrication'
require './repo/models/user'

Fabricator(:user) do
  first_name 'Old'
  last_name 'Gregg'
end
