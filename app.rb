require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1])
    player_2 = Player.new(params[:player2])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name   = $game.player_1.name
    @player_2_name   = $game.player_2.name
    @player_2_health = $game.player_2.health
    erb :play
  end

  post '/attack' do
    $game.attack $game.player_2
    @player_2_name= $game.player_2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
