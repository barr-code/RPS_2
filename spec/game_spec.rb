require './app/game'

describe Game do

	let(:game) {Game.new}
	let(:player) {double :player, :name => "Victoria"}

	it "starts out without a player" do
		expect(game.player).to eq nil
	end

	it "players join with names" do
		game.player = player
		expect(game.player.name).to eq "Victoria"
	end

end