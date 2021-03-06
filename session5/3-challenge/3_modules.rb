# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solution, try to understand the code, then close the file, come back here, and try again to solve it.

# Write a list class. Implementation doesn't matter.
#
# list = List.new
# list << 1
# list << 5
# list << 3
# list << 4
# list << 2
# list # => #<List: 1, 5, 3, 4, 2>
#
#
# Then give it an each method that iterates over its items in the order they were inserted
# ary = []
# ff.each do |crnt|
#   ary << crnt
# end
# ary # => [1, 5, 3, 4, 2]
#
#
# Then use the Enumerable module http://ruby-doc.org/core/classes/Enumerable.html to give
# your class its methods.
# ff.max                        # => 5
# ff.min                        # => 1
# ff.select { |num| num.odd? }  # => [1, 5, 3]

class List

	include Enumerable

	def initialize
		@values = []
	end

	def <<(val)
		  @values << val
		  self
	end

	def inspect
		output_string = "#<List: "
		vals = ""
		@values.each do |val|
			vals.length.zero? ? vals << "#{val}" : vals << ", #{val}"
			end 
		output_string << vals << ">"
	end

	def each &block
		@values.each &block
	end


end
