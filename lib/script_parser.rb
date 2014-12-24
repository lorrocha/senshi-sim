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
			temp_array << line if start_array && line != "\n"
			if line.start_with?('Scene')
				start_array = true
			elsif line == "\n" || line == 'END'
				total_script << temp_array
				temp_array = []
				start_array = false
			end
		end
		binding.pry
	end

end
