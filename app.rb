require 'sinatra/base'
# require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    @player1_hit_points = 60
    @player2_hit_points = 60

    erb(:play)
  end

  run! if app_file == $0

end
