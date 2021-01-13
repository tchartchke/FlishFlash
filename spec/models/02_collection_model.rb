require 'pry'
describe 'Collection' do
  before do
    @user = User.create(:username => "char", :password => "test")
    @collection = Collection.create(:name => "vocab", :description=> "chapter 1 vocab words", :user_id => @user.id)
  end

  it 'will update number of collections associated with a user' do
    count = @user.collections.all.count
    Collection.create(:name => "grammer", :description=> "chapter 1 grammar points", :user_id => @user.id)
    Collection.create(:name => "vocab", :description=> "chapter 2 vocabulary", :user_id => @user.id)

    expect(@user.collections.all.count).to eq(count+2)
  end

  it 'associated with correct user' do
    @new_user = User.create(:username => "g", :password => "asdf")
    id = @new_user.id
    @new_collection = Collection.create(:name => "grammer", :description=> "chapter 1 grammar points", :user_id => id)
    expect(@new_collection.user).to eq(@new_user)
  end
  
end


