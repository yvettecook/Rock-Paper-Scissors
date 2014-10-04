require 'sinatra/base'
require_relative './models/player'
require_relative './models/game'


class Play < Sinatra::Base

	GAME = Game.new

	set :views, Proc.new { File.join(root, "..", "views")}
	enable :sessions

  get '/' do
  	@name = session[:me]
    erb :index
  end

  post '/new_player' do
   	GAME.add_player Player.new(params[:name])
   	session[:me] = params[:name]
   	erb :index
   	redirect '/'
  end

 	post '/new_game' do
 	# 	puts "*******"
 	# 	puts session.inspect
		# puts "*******"
		# puts GAME.inspect
  	@name = session[:me]
  	erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
