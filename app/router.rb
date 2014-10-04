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
  	PLAYER = Player.new(params[:name])
   	GAME.add_player PLAYER
   	session[:me] = params[:name]
   	erb :index
   	redirect '/'
  end

 	post '/new_game' do
  	@name = session[:me]
  	erb :game
  end

  post '/result' do
  	@name = session[:me]
  	@choice = params[:choice]
  	session[:choice] = @choice
  	PLAYER.choice = @choice
  	erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end



# Notes
# puts "=====" *20
# puts session.inspect
# puts "=====" *20
# puts @choice.inspect
# puts "=====" *20
# puts PLAYER.inspect
# puts "=====" *20
# puts GAME.inspect