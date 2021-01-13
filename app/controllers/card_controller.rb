class CardsController < ApplicationController
  get '/card' do
    erb :'cards/show', :layout => :card
  end

  get '/card/:id' do
    @card = Card.find(params[:id])
    # <div> <a href="#">EDIT</a> or <span><a href="#">DELETE</a></span></div>
    erb :'cards/show', :layout => :card
  end

end