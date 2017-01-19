require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  get '/victory' do
    erb(:victory)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  post '/attack' do
    @game.attack(@game.current_opponent)
    if @game.opponent_dead?
      redirect '/victory'
    else
      redirect '/attack'
    end
  end

  post '/switch' do
    @game.switch
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
