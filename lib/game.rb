require 'pry'
require_relative 'usagi'
require_relative 'gameplay'
require_relative 'level1'

class GameRunner
	def initialize
		@game = Gameplay.new(Usagi.new)
	end

	def start
		binding.pry
	end
end

GameRunner.new.start
