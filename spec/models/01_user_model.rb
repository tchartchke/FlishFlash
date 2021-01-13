require 'pry'

describe 'User' do
  before do
    @user = User.create(:username => "char", :password => "test")
  end
  xit 'can slug the username' do
    expect(@user.slug).to eq("char")
  end

  xit 'can find a user based on the slug' do
    slug = @user.slug
    expect(User.find_by_slug(slug).username).to eq("char")
  end

  it 'has a secure password' do
    expect(@user.authenticate("dog")).to eq(false)
    expect(@user.authenticate("test")).to eq(@user)
  end
end