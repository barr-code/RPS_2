require './app/player'

describe Player do

	let(:player) {Player.new("Victoria")}

	it "has a name" do
		expect(player.name).to eq "Victoria"
	end

	it "does not start with a weapon" do
		expect(player.weapon).to eq nil
	end

	it "can choose a weapon" do
		player.weapon = "scissors"
		expect(player.weapon).to eq "scissors"
	end
end