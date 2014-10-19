class Player

	attr_accessor :name, :weapon, :wins

	def initialize(name)
		@name = name
		@weapon = nil
		@wins = 0
	end
end