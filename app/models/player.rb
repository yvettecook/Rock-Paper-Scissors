class Player

	attr_accessor :name, :choice
	attr_reader :wins, :losses, :draws

	def initialize(name)
		@name = name
		@choice = nil
		@wins = 0
		@losses = 0
		@draws = 0
	end

	def win
		@wins += 1
	end

	def lose
		@losses += 1
	end

	def draw
		@draws += 1
	end

	def score
		"WIN #{@wins} | DRAW #{@draws} | LOSE #{@losses}"
	end


end