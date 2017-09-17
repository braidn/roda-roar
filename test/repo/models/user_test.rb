require 'minitest/autorun'
require './repo/models/user'

describe User do
  it 'is instantiatable' do
    User.new.must_be_instance_of User
  end
end
