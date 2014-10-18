require 'sinatra/base'

class RPS < Sinatra::Base

	enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
  	@player = params[:player]
  	session[:player] = @player
  	erb :game
  end

  post '/results' do
  	@weapon = params[:weapon]
  	@player = session[:player]
  	erb :results
  end


  run! if app_file == $0
end