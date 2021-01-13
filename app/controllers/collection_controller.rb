class CollectionsController < ApplicationController
  post '/collections' do
    if signed_in?
      @collection = Collection.new(params[:collection])
      @collection.user = current_user
      @collection.save
      redirect 'collections/:slug'
    else
      redirect '/signin'
    end
    
  end

  get '/collections/:slug' do
    @collection = Collection.find_by_slug(params[:slug])
    erb :'collections/show'
  end
end