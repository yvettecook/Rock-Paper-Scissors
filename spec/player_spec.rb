require './app/models/player'

describe Player do 

	let (:player) { Player.new('Yvette') }

	it "should have a name" do
		expect(player.name).to eq 'Yvette'
	end
	
end