class Game

	attr_reader :player1, :player2

	def initialize
		@player1 = nil
		@player2 = nil
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

	def choices
	 	p1 = player1.choice
		p2 = player2.choice
		result(p1,p2)
	end

	def result(a,b)
		case 
			when a == b 
				return 'draw'
			when a == 'rock'
				return "#{player1.name} wins" if b == 'scissors' 
				return "#{player2.name} wins" if b == 'paper'
			when a == 'paper' 
				return "#{player1.name} wins" if b == 'rock'
				return "#{player2.name} wins" if b == 'scissors'
			when a == 'scissors' 
				return "#{player1.name} wins" if b == 'paper'
				return "#{player2.name} wins" if b == 'rock'
			else
				"wtf"
			end
	end


end

# 	def player2_move
# 		return choices.sample
# 	end

# 	def player1_move(move)
# 		return choices.sample
# 	end

#


