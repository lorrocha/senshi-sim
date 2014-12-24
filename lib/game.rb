require 'pry'
Dir['./*.rb'].each { |f| require f }
Dir['../levels/*.rb'].each { |f| require f }

class GameRunner
	def start
		usa = Level1.new(Usagi.new, []).run
		ScriptParser.new('test.txt')
		binding.pry
	end
end

GameRunner.new.start
