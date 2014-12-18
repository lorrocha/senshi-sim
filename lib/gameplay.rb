class Gameplay
	attr_accessor :usa

	def initialize(player)
		@usa = player
		@place = Locations.new
	end

	def randomizer
		rand(11)
	end

	def all_stats
		@usa.all_stats
	end

	def stat_check(stat, goal)
		@usa.send(stat.to_sym) + randomizer >= goal
	end

	def update_stat(stat, num)
		val = @usa.send("#{stat}") + num
		@usa.send("#{stat}=", val)
	end
end
