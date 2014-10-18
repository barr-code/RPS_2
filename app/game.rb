require_relative 'player'

class Game

	attr_accessor :player, :computer_choice, :winner

	def initialize
		@player = nil
		@computer_choice = nil
		@winner = nil
	end

	DEFEATS = {"rock" => "scissors",
		"scissors" => "paper",
		"paper" => "rock"}

	def random_choice
		@computer_choice = %w(rock paper scissors).sample
	end

	def result
		random_choice
		@winner = 'draw' if @player.weapon == @computer_choice
		@winner = @player.name if DEFEATS[@player.weapon] == @computer_choice
		@winner = 'Computer' if DEFEATS[@computer_choice] == @player.weapon
	end

end