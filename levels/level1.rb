class Level1
	def initialize(usagi, senshi_hash)
		# The beginning and the end of every level
		# Starts with passing on the usagi / senshi array
		@usa = usagi
		@senshi = senshi_hash

		@game = Gameplay.new(@usa)
	end

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

	def opening_exposition
		puts "Blah blah blah exposition here"
	end

	def first_action
		input = valid_input(['l','h','w']) do
			puts "There seems to be a noise outside your window. What do you want to do?"
			puts "[L]ook out the window"
			puts "[H]ide under the covers"
			puts "[W]ait and see what happens"
		end
	
		if input == 'l'
			@game.update_stat('initiative',2)
			goes_to_window
		elsif input == 'h'
			@game.update_stat('composure',-1)
		else
			@game.update_stat('focus',1)
		end
	end

	def goes_to_window
		puts "You steel yourself, clenching your jaw stubbornly, and march over to the window."
		puts "You throw the curtains back to reveal..."
		sleep 1
		puts "A cat!"
	end

	def finish_level
		[@usa, @senshi]
	end

	def run
		opening_exposition
		first_action
		finish_level
	end
end
