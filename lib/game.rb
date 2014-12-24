require 'pry'
Dir['./*.rb'].each { |f| require f }
Dir['../levels/*.rb'].each { |f| require f }

class GameRunner
	def start
		usa = Level1.new(Usagi.new, []).run
		binding.pry
	end
end

GameRunner.new.start
