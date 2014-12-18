class Gameplay
	attr_accessor :usa

	def initialize(player)
		@usa = player
	end

	def randomizer
		rand(11)
	end

	def stat_check(stat, goal)
		@usa.send(stat.to_sym) + randomizer >= goal
	end

	# def improve_stat(stat, num)
	# 	@usa.send(stat.to_sym) = @usa.send(stat.to_sym) + num
	# end

	def lower_stat(stat, num)
		@usa.send(stat.to_sym) = @usa.send(stat.to_sym) - num
	end
end
