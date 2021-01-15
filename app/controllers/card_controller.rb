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
    @collection = Collection.find_by_id(params[:id])
    if signed_in? && @collection.user == current_user
      card = @collection.cards.build(params[:card])
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
  
  delete '/card/:id/delete' do
    @card = Card.find_by_id(params[:id])
    @collection = @card.collection

    @card.destroy if signed_in? && current_user == @collection.user
    
    redirect "/collections/#{@collection.id}/new_card#cards"
  end

  get '/card/:id/edit' do
    @card = Card.find_by_id(params[:id])
    @collection = @card.collection
    if signed_in? && @collection.user == current_user
      erb :'cards/edit'
    else
      redirect '/signin'
    end
  end

  get '/card/:id' do
    @card = Card.find_by_id(params[:id])
    erb :'cards/show', :layout => :card
  end

  patch '/card/:id' do
    @card = Card.find_by_id(params[:id])
    @collection = @card.collection
    if signed_in? && @collection.user == current_user
      @card.update(params[:card])
      redirect "/collections/#{@card.collection.id}/new_card##{@card.id}"
    else
      redirect '/'
    end
  end

end