class UsersController < ApplicationController
  get '/signup' do
    if signed_in?
      redirect '/user'
    else
      erb :'users/signup'
    end
  end

  post '/signup' do
    if params[:user].values.include?("")
      redirect '/signup'
    else
      @user = User.create(params[:user])
      session[:user_id] = @user.id
      redirect '/user'
    end
  end

  get '/signin' do
    if signed_in?
      redirect '/user'
    else
      erb :'users/signin'
    end
  end

  post '/signin' do
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/user'
    else
      redirect '/signin'
    end
  end

  get '/user' do
    if signed_in?
      @user = current_user
      erb :'users/home'
    else
      redirect '/signin'
    end
  end

  get '/signout' do
    session.clear 
    redirect '/signin'
  end
end