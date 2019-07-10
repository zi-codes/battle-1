require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
# require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.finished? ? erb(:results) : erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/ok' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0

end
