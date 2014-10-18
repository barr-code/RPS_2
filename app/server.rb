require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base
  GAME = Game.new

	enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:player] = params[:player]
  	redirect to '/game'
  end

  get '/game' do
    @player = session[:player]
    GAME.player = Player.new(@player)
    puts GAME.inspect
    erb :game
  end

  post '/results' do
    GAME.player.weapon = params[:weapon]
  	@player = session[:player]

    redirect to('/results')
  end

  get '/results' do
    GAME.result
    @winner = GAME.winner
    @player = session[:name]
    @weapon = GAME.player.weapon
    @computer = GAME.computer_choice
    puts GAME.inspect
    erb :results

  end


  run! if app_file == $0
end