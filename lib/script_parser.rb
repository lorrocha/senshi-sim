# Going under the assumption that scripts will follow the following format,

# Luna: Usagi! You must transform
# ** stat_check('composure',20)
# Narrative: You throw your pen into the air and become a magical girl!

class ScriptParser
	def initialize(file)
		@file = File.new(file)
		parse
	end

	def parse
		total_script = []
		temp_array = []
		start_array = false

		@file.each_line do |line|
			line = line.chomp
			temp_array << line if start_array && !line.empty?
			if line.start_with?('Scene')
				start_array = true
			elsif line.empty?
				total_script << temp_array unless temp_array.empty?
				temp_array = []
				start_array = false
			elsif line.start_with?('**')
				total_script << line
			end
		end
		total_script << temp_array unless temp_array.empty?
		binding.pry
	end

end
