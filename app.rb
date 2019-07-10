require 'sinatra/base'
require_relative 'lib/player'
# require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player1_name])
    $player_2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    @player1_hit_points = $player_1.hp
    @player2_hit_points = $player_2.hp

    erb(:play)
  end

  get '/attack_p2' do
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    $player_1.attack($player_2)
    @player1_hit_points = $player_1.hp
    @player2_hit_points = $player_2.hp
    erb(:wham_p2)
  end

  run! if app_file == $0

end
