class CollectionsController < ApplicationController
  get '/collections/new' do
    erb :'collections/new'
  end
end