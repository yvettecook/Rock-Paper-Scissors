require './app/models/player'

describe Player do 

	let (:player) { Player.new('Yvette') }

	it "should have a name" do
		expect(player.name).to eq 'Yvette'
	end

	it "should add a win when .win called" do
		player.win
		expect(player.wins).to eq(1)
	end

	it "should add a loss when .lose called" do
		player.lose
		expect(player.losses).to eq(1)
	end

	it "should add a draw when .draw called" do
		player.draw
		expect(player.draws).to eq(1)
	end
	
end