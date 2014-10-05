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
    if GAME.has_player?
    	PLAYER1 = Player.new(params[:name])
    	GAME.add_player PLAYER1
     	session[:me] = params[:name]
      session[:id] = 1
    else
      PLAYER2 = Player.new(params[:name])
      GAME.add_player PLAYER2
      session[:me] = params[:name]
      session[:id] = 2
    end
  	erb :index
   	redirect '/'
  end

 	post '/new_game' do
  	@name = session[:me]
  	erb :game
  end

  post '/result' do
    @choice = params[:choice]
    if session[:id] == 1 
      PLAYER1.choice = params[:choice]
    else
      PLAYER2.choice = params[:choice]
    end
  	redirect '/result_page'
  end

  get '/result_page' do
  	@player1_name = GAME.player1.name
  	@player1_choice = GAME.player1.choice
  	@player2_name = GAME.player2.name
  	@player2_choice = GAME.player2.choice
    @result = GAME.choices
  	erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

