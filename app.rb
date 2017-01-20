require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @players = $game.players
    @game = $game
    erb :play
  end

  get '/winner' do
    @game = $game
    erb :winner
  end

  post '/attack' do
    game = $game
    @players = game.players
    game.attack(game.opposing_player)
    if game.over?
      redirect '/winner'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = $game
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
