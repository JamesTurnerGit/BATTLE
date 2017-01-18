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
    @player_1_health = $game.player_1.health
    @player_2_health = $game.player_2.health
    @active_player_name = $game.active_player.name
    erb :play
  end

  post '/attack' do
    opponent = $game.opponent_of $game.active_player
    $game.attack opponent
    @opponent_name = opponent.name
    if opponent.health == 0
      redirect '/winner'
    end
    $game.switch
    erb :attack
  end

  get '/winner' do
    @winner = $game.active_player.name
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
