require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_health = $player2.health
    erb :play
  end

  post '/attack' do
    $player1.attack $player2
    @player2 = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
