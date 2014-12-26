class Level
	def initialize(usagi, senshi_hash)
		# The beginning and the end of every level
		# Starts with passing on the usagi / senshi array
		@usa = usagi
		@senshi = senshi_hash

		@game = Gameplay.new(@usa)
	end

	#Useful methods that I'm sure will come up often
	def get_input
		gets.chomp.downcase
	end

	def valid_input(array_of_acceptable_values, &block)
		block.call
		input = get_input
	  if array_of_acceptable_values.include?(input)
	  	return input
	  else
	 	  valid_input(array_of_acceptable_values) { block.call }
	 	end
	end

	def finish_level
		[@usa, @senshi]
	end

	def puts_lines(array)
		binding.pry
	end
end
