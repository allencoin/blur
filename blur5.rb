class Image
	attr_accessor :image

	def initialize(array)
		@image = array
	end

	def output_image
		@image.each do |row|
			row.each do |column|
			print column
			print " "
		end
			puts "\n"
		end
	end

	def blur(distance = 3)
		distance.times do
			ones = get_ones
			@image.each_with_index do |row, i|
				row.each_with_index do |cell, j|
					if ones.include?([i, j])
						@image[i-1][j] = 1 unless i == 0
						@image[i+1][j] = 1 unless i == (@image.length - 1)
						@image[i][j-1] = 1 unless j == 0
						@image[i][j+1] = 1 unless j == (row.length - 1)
					end
				end
			end
		end
	end

	def get_ones
		ones = []
		@image.each_with_index do |row, i|
			row.each_with_index do |cell, j|
				if cell == 1
					ones << [i, j]				
				end
			end
		end
		ones
	end

	# def blur
	# 	blurred = []

	# 	@image.each_with_index do |row, i|
	# 		row.each_with_index do |element, e|
	# 			if element == 1
	# 				blurred << element
	# 			elsif element == 0
	# 				blurred << 0
	# 			end
	# 			print @blurred
	# 		end
	# 		puts "\n"
	# 	end
	# end

	# def blur
	# 	@image.each_with_index do |element, i|
	# 		puts element[i] = 1
	# 	end
	# end

	# def output_image
	# 	@image.each do |x|
	# 		puts x.join(" ")
	# 	end
	# 	# @image.each_with_index do |element, i|
	# 	# 	@image[i] = 1
	# 	# end
	# end
end

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
])

image.output_image
puts "---"
puts "blurred v"
image.blur
puts "---"
image.output_image
puts "---"
# puts image.get_ones


#manhattan distance Definition: The distance between two points measured along axes at right angles. 
#In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|. 