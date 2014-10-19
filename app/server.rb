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
    GAME.player = Player.new(session[:player])

  	redirect to '/game'
  end

  get '/game' do
    @player = session[:player]
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

    if @winner == GAME.player.name
      GAME.player.wins += 1
    elsif @winner == 'Computer'
      GAME.computer_wins += 1
    end

    @player_wins = GAME.player.wins
    @comp_wins = GAME.computer_wins

    puts GAME.inspect
    erb :results

  end


  run! if app_file == $0
end