require './app/game'

describe Game do

	let(:game) {Game.new}
	let(:player) {Player.new("Victoria")}

	it "starts out without a player" do
		expect(game.player).to eq nil
	end

	it "players join with names" do
		game.player = player
		expect(game.player.name).to eq "Victoria"
	end

	it "starts without a computer choice" do
		expect(game.computer_choice).to eq nil
	end

	it "sets a computer choice randomly" do
		game.random_choice
		expect(game.computer_choice).not_to eq nil
	end

	it "starts out without a winner" do
		expect(game.winner).to eq nil
	end

	it "knows who wins the game" do
		game.player = player
		game.player.weapon = "scissors"
		game.result
		expect(game.winner).not_to eq nil
	end

end