require 'sinatra'

enable :sessions

#class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    p  params[:player1_name]
    session[:p1_name] = params[:player1_name]
    session[:p2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  #run! if app_file == $0
#end
