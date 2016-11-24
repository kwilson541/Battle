require 'sinatra'
require_relative './lib/player.rb'


#class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do

    $player_1 = Player.new(params[:player1_name])
    $player_2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly
  #run! if app_file == $0
#end
