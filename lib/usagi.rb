class Usagi
	attr_accessor :composure, :charisma, :compassion, :friendliness, :athleticism, :fight, :focus, :knowledge, :initiative, :fun

	def initialize
		@composure = 20
		@charisma = 20
		@compassion = 20
		@friendliness = 30
		@athleticism = 20
		@fight = 20
		@focus = 20
		@knowledge = 20
		@initiative = 20
		@fun = 20
	end

	def all_stats
		{'composure'=> composure, 'charisma'=> charisma, 'compassion'=> compassion,
		 'friendliness'=> friendliness,'athleticism'=> athleticism, 'fight'=> fight,
		  'focus'=> focus, 'knowledge'=> knowledge, 'initiative'=> initiative,'fun'=> fun}
	end
end
