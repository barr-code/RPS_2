require_relative 'player'

class Game

	attr_accessor :player, :computer_choice, :winner

	def initialize
		@player = nil
		@computer_choice = nil
		@winner = nil
	end

	DEFEATS = {"rock" => ["scissors", "lizard"],
		"scissors" => ["paper", "lizard"],
		"paper" => ["rock", "Spock"],
		"lizard" => ["Spock", "paper"],
		"Spock" => ["rock", "scissors"]}

	def random_choice
		@computer_choice = %w(rock paper scissors lizard Spock).sample
	end

	def result
		random_choice
		@winner = 'draw' if @player.weapon == @computer_choice
		@winner = @player.name if DEFEATS[@player.weapon].include? @computer_choice
		@winner = 'Computer' if DEFEATS[@computer_choice].include? @player.weapon
	end

end