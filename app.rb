require 'sinatra'
require_relative './lib/player.rb'

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
    erb(:play)
  end

  post '/attack' do
    erb(:attack)
  end
