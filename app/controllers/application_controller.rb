require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions unless test?
    set :session_secret, "supersecretishouldmakethisanenvvariableatsomepoint"

    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :welcome
  end

  post '/' do
    @msg = "Just kidding this form doesn't actually work. Maybe it'll be an upcoming feature." unless params[:message].nil?
    erb :welcome
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
