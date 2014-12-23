class Level1 < Level
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
			hides_under_covers
		else
			@game.update_stat('focus',1)
			waits_for_more
		end
	end

	def goes_to_window
		puts "You steel yourself, clenching your jaw stubbornly, and march over to the window."
		puts "You throw the curtains back to reveal..."
		sleep 0.6
		puts "A cat!"
	end

	def hides_under_covers
		puts "Nuh, uh! You throw yourself under the covers stubbornly, closing your eyes with great determination."
		puts "It was only a dream. Yes, you must have been dreaming...but still, you can't resist the urge to crack open one eye and peer to the window."
		puts "Is that the outline of a cat?"
	end	

	def waits_for_more
		puts "Your brows furrow as you sit, willing your ears to pick up on every sound possible. You notice the scuffling pick up again, and soon afterwards make out the form of a cat."
	end

	def second_exposition
		puts "Luna: Usagi. Blah blah blah"
	end


	def run
		opening_exposition
		first_action
		second_exposition
		finish_level
	end
end
