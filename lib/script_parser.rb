# Going under the assumption that scripts will follow the following format,

# Luna: Usagi! You must transform
# ** stat_check('composure',20)
# Narrative: You throw your pen into the air and become a magical girl
class ScriptParser
	attr_accessor :lines, :actions

	def initialize(file)
		@file = File.new(file)
		@lines = []
		@actions = []
		separate_actions_from_lines
		@lines = parse_individual_lines(@lines)
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
				total_script << strip_action(line)
			end
		end
		total_script << temp_array unless temp_array.empty?
	end

	def separate_actions_from_lines
		parse.each do |object|
			if object.kind_of?(Array)
				@lines << object
			else
				@actions << object
			end
		end
	end

	def parse_individual_lines(array)
		array.map { |block| parse_line(block) }
	end

	def parse_line(array)
		array.map do |line|
			split_line = line.split(': ')
			{split_line[0] => split_line[1]}
		end
	end

	def strip_action(line)
		line.gsub('**', '').strip
	end

end
