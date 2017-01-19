require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  # before do
  #   @game = Game.current_game || "cheeseburger"
  # end

  get '/' do
    erb(:index)
  end

  get '/victory' do
    @game = Game.current_game
    erb(:victory)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb(:play)
  end

  get '/attack' do
    @game = Game.current_game
    erb(:attack)
  end

  post '/attack' do
    @game = Game.current_game
    @game.attack(@game.current_opponent)
    if @game.opponent_dead?
      redirect '/victory'
    else
      redirect '/attack'
    end
  end

  get '/switch' do
    @game = Game.current_game
    @game.switch
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
