require_relative 'board'
require_relative 'boardcase'
require_relative 'game'

class Player
	attr_accessor :name, :symbol
	attr_writer :score

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@score = nil
	end

end