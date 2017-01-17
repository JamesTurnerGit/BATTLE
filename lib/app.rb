require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index, :locals => {:player_1_name => params[:player_1_name],:player_2_name => params[:player_2_name]}
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect to('/play')
  end

  get '/play' do
    erb :play, :locals => {:player_1_name => session[:player_1_name],:player_2_name => session[:player_2_name]}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
