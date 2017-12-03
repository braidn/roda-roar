require './test/fabricators/user_fabricator'
require './repo/models/user'

describe User do
  it 'has a valid factory' do
    Fabricate(:user).must_be_instance_of User
  end
end
