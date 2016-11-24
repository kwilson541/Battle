require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @player1 = $player1
    @player2 = $player2
    @game.attack(@player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
