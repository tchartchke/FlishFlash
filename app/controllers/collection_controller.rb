class CollectionsController < ApplicationController
  get '/collections' do
    if signed_in?
      @user = current_user
      redirect '/user#galleries'
    else
      redirect '/signin'
    end
  end

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

  delete '/collections/:id' do
    @collection = Collection.find_by_id(params[:id])
    if signed_in? && current_user == @collection.user
      @collection.destroy
      redirect '/collections'
    else
      redirect '/signin'
    end
  end
    

  get '/collections/:id' do
    @collection = Collection.find_by_id(params[:id])
    if @collection
      erb :'collections/show'
    else
      erb :oops
    end
  end

  patch '/collections/:id' do
    @collection = Collection.find_by_id(params[:id])
    if signed_in? && current_user == @collection.user
      @collection.update(params[:collection])
      redirect "/collections/#{@collection.id}"
    else
      redirect '/signin'
    end
  end

  get '/collections/:id/edit' do
    @collection = Collection.find_by_id(params[:id])
    erb :'collections/edit'
  end

end










