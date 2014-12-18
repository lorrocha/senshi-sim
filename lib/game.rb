require 'pry'
require_relative 'usagi'

class GameRunner
	def initialize
		@player = Usagi.new
	end

	def start
		binding.pry
	end
end

GameRunner.new.start
