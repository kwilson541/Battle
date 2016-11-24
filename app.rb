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
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    if @game.dead_player.nil?
      @game.attack(@game.inactive_player)
      erb(:attack)
    else
      redirect '/dead'
    end
  end

  get '/dead' do
    @game = $game
    erb(:dead)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
