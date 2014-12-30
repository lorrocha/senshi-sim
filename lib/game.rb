require 'pry'
Dir['./*.rb'].each { |f| require f }
Dir['../levels/*.rb'].each { |f| require f }

class GameRunner
	def self.start
		usa = Level1.new(Usagi.new, []).run
		binding.pry
	end
end

GameRunner.start
