require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1_name])
    session[:player2] = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  post '/attack' do
    @game = Game.new
    @player1 = session[:player1]
    @player2 = session[:player2]
    @game.attack(@player2)
    erb(:attack)
  end
