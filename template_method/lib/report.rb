
# Design Patterns in Ruby, Chapter 3. Varying the Algorithm with the Template Method

require 'lib/html_report'
require 'lib/plain_text_report'

class Report

	def initialize
		@title = "Monthly Report"
		@text = ["Things are going", "really, really well"]
	end

	def output_report
		output_start
		output head
		@text.each do |line|
			output_line(line)
		end
		output_end
	end

	def output_start
	end

	def output_head
		output_line(@title)
	end

	def output_body_start
	end

	def output_line(line)
		raise 'Called abstract method: output_line'
	end

	def output_body_end
	end

	def output_end
	end

end