class CardsController < ApplicationController
  get '/card' do
    erb :'cards/show', :layout => :card
  end

  get '/card/:id' do
    "This is a card"
  end

end