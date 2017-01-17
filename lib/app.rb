require 'sinatra/base'

class Battle < Sinatra::Base

  set :session_secret, 'super secret'

  get '/' do
    erb :index, :locals => {:player_1_name => params[:player_1_name],:player_2_name => params[:player_2_name]}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  post '/names' do
    erb :fight, :locals => {:player_1_name => params[:player_1_name],:player_2_name => params[:player_2_name]}
  end
end
