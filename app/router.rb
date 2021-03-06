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
    	GAME.player1 = PLAYER1
     	session[:me] = params[:name]
      session[:id] = 1
    else
      PLAYER2 = Player.new(params[:name])
      GAME.player2 = PLAYER2
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

  get '/new_game' do
    @name = session[:me]
    erb :game
  end

  post '/result' do
    @choice = params[:choice]
    session[:id] == 1 ? PLAYER1.choice = params[:choice] : PLAYER2.choice = params[:choice]
    if GAME.player1.choice != nil && GAME.player2.choice != nil
      @result = GAME.choices 
      session[:result] = @result 
      puts session.inspect 
    end
  	redirect '/result_page'
  end

  get '/result_page' do
    puts session.inspect
    @result =  session[:result] 
  	erb :result
  end

  get '/again' do
    GAME.new_round
    redirect '/new_game'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

