class Game

	attr_accessor :player1, :player2

	def initialize
		@player1 = nil
		@player2 = nil
	end

	def players
		[@player1, @player2]
	end

	def has_player?
		@player1.nil?
	end

	def has_both_players?
		!@player1.nil? && !@player2.nil?
	end

	def choices
		result(player1.choice,player2.choice)
	end

	def result(a,b)
		case 
			when a == b 
			 draw
			when a == 'rock'
				b == 'scissors' ? player1_win : player2_win 
			when a == 'paper' 
				b == 'rock' ? player1_win : player2_win 				
			when a == 'scissors' 
				b == 'paper' ? player1_win : player2_win 
			else
				"wtf"
			end
	end

	def player1_win
		@player1.win
		@player2.lose
		return "#{player1.name} wins"
	end

	def player2_win
		player2.win
		player1.lose
		return "#{player2.name} wins"
	end

	def draw
		player1.draw
		player2.draw
		return 'draw'
	end

	def new_round
		player1.choice = nil
		player2.choice = nil
	end


end

# 	def player2_move
# 		return choices.sample
# 	end

# 	def player1_move(move)
# 		return choices.sample
# 	end

#


