class CardsController < ApplicationController
  get '/card' do
    erb :'cards/show', :layout => :card
  end

  get '/card/:id' do
    @card = Card.find(params[:id])
    erb :'cards/show', :layout => :card
  end

end