class BoardCase
	attr_accessor :position, :value

	def initialize(position)
		@position = position
		@value = ''
	end

	def value_to_s
		if @value == '' "[#{@position}]"
		else "[ #{@value} ]"
		end
	end

end

