class Game

	attr_reader :player1, :player2, :choices

	def initialize
		@player1 = nil
		@player2 = nil
		# @choices = ['rock', 'paper', 'scissors']
	end

	def players
		[@player1, @player2]
	end

	def add_player(player)
		return @player2 = player unless has_player?
		@player1 = player
	end

	def has_player?
		@player1.nil?
	end

end

# 	def player2_move
# 		return choices.sample
# 	end

# 	def player1_move(move)
# 		return choices.sample
# 	end

# 	def moves
# 	 	p1 = player1_move
# 		p2 = player2_move
# 		result(p1,p2)
# 	end

# 	def result(a,b)
# 		case 
# 			when a == b 
# 				return 'draw'
# 			when a == 'rock'
# 				return "#{player1} wins" if b == 'scissors' 
# 				return "#{player2} wins" if b == 'paper'
# 			when a == 'paper' 
# 				return "#{player1} wins" if b == 'rock'
# 				return "#{player2} wins" if b == 'scissors'
# 			when a == 'scissors' 
# 				return "#{player1} wins" if b == 'paper'
# 				return "#{player2} wins" if b == 'rock'
# 			else
# 				"wtf"
# 			end
		
# 	end



