require './test/fabricators/user_fabricator'
require './representers/users_representer'

describe UsersRepresenter do
  before do
    @user = Fabricate(:user)
    @json = UsersRepresenter.prepare(@user).to_json
  end

  it 'serializers a users first_name' do
    @json.must_include @user.first_name
  end

  it 'serializers a users first_name' do
    @json.must_include @user.first_name
  end
end
