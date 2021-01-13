require 'pry'
describe 'Card' do
  before do
    @user = User.create(:username => "char", :password => "test")
    @collection = Collection.create(:name => "vocab", :description=> "chapter 1 vocab words", :user_id => @user.id)
  end

  it 'belongs to collection and a user' do
    @card = Card.create(:front => "ashi", :back => "foot/leg", :info => "single character", :collection_id => "1")

    expect(@card.collection).to eq(@collection)
    expect(@card.user).to eq(@user)
  end

end


