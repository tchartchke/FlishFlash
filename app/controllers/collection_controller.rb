class CollectionsController < ApplicationController
  post '/collections' do
    if signed_in?
      @collection = Collection.new(params[:collection])
      @collection.user = current_user
      @collection.save
      redirect "collections/#{@collection.id}"
    else
      redirect '/signin'
    end
    
  end

  get '/collections/:id' do
    @collection = Collection.find(params[:id])
    erb :'collections/show'
  end
end










