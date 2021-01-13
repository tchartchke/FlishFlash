require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions unless test?
    set :session_secret, "supersecretishouldmakethisanenvvariableatsomepoint"

    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    if signed_in?
      redirect '/user'
    else
      erb :welcome
    end
  end

  not_found do
    status 404
    erb :oops
  end  
  
  helpers do
    def signed_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

  end
end
