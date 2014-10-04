require 'sinatra/base'

class Play < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  post '/new_player' do
    @name = params[:name]
    player1 = Player.new(name: @name)
   	erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
