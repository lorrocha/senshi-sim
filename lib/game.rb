require 'pry'
Dir['./*.rb'].each { |f| require f unless f.include?('game.rb') }
Dir['../levels/*.rb'].each { |f| require f }
Dir['../scripts/*rb'].each { |f| require f }

class GameRunner
	def start
	 	usa = Level1.new(Usagi.new, []).run
	end
end

GameRunner.new.start
