class CardsController < ApplicationController
  get '/card' do
    erb :'cards/show', :layout => :card
  end

  get '/collections/:id/new_card' do
    @collection = Collection.find(params[:id])
    erb :'cards/new'
  end

  post '/collections/:id/new_card' do
    @msg = nil
    @collection = Collection.find(params[:id])
    if signed_in? && @collection.user == current_user
      card = Card.create(params[:card])
      card.collection = @collection
      if card.save
        @msg = "New Card added to Collection!"
      else
        @msg = "Error: Unable to add new card"
      end
      erb :'cards/new'
    else
      redirect '/signin'
    end
  end
  

  get '/card/:id' do
    @card = Card.find(params[:id])
    erb :'cards/show', :layout => :card
  end

end