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
    session[:game] = Game.new(session[:player1],session[:player2])
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/attack' do
    @game = session[:game]
    @game.attack(@game.player2)
    erb(:attack)
  end
