require 'sinatra/base'
require_relative './models/player'

class Play < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views")}
	enable :sessions

  get '/' do
    erb :index
  end

  post '/new_player' do
  	session[:player1] = Player.new
  	@player = session[:player1]
    @name = params[:name]
   	erb :index
  end

 	post '/new_game' do
  	erb :game
  end

  get '/new_game' do
  	erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
