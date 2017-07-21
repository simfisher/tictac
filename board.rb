require_relative 'boardcase'
# require_relative 'player'

class Board
	attr_accessor :table

	def initialize
		@caseA1 = BoardCase.new('A1')
		@caseA2 = BoardCase.new('A2')
		@caseA3 = BoardCase.new('A3')
		@caseB1 = BoardCase.new('B1')
		@caseB2 = BoardCase.new('B2')
		@caseB3 = BoardCase.new('B3')
		@caseC1 = BoardCase.new('C1')
		@caseC2 = BoardCase.new('C2')
		@caseC3 = BoardCase.new('C3')

		@table = []
		@row1 = []
		@row2 = []
		@row3 = []

		@row1 << @caseA1 << @caseB1 << @caseC1
		@row2 << @caseA2 << @caseB2 << @caseC2
		@row3 << @caseA3 << @caseB3 << @caseC3
		@table << @row1 << @row2 << @row3

	end

	def table_to_s
		@table.map { |row| row.map(&:value_to_s).join(' ') }
	end

	def play(player, symbol)
		puts "#{player} : Which case would you like to play ? "
		choice = gets.chomp
		select @caseXY
		if @caseXY.value == '' @caseXY.value = @symbol
		else puts "Case already played. Please choose another case :"

	end

	def victory
		#TO DO : qui gagne ?
		# faire des sum_table, si somme = 3, joueurX gagne

		# A1 A2 A3
		# B1 B2 B3
		# C1 C2 C3
		# A1 B1 C1
		# A2 B2 C2
		# A3 B3 C3
		# A1 B2 C3
		# A3 B2 C1
	end

end