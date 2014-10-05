require './app/models/player'
require './app/models/game'

describe Game do 

	let (:game) { Game.new }
	let (:player1) { Player.new('Yvette') }
	let (:player2) { Player.new('Rachel') }

	it "should add a point when a player wins" do
		game.player1 = player1
		game.player2 = player2
		player1.choice = 'rock'
		player2.choice = 'scissors'
		expect(game.choices).to eq("Yvette wins")
		expect(player1.wins).to eq(1)
		expect(player2.losses).to eq(1)
	end

end
