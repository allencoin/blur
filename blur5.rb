class Image
	def initialize(image)
		@image = image
	end

	def output_image
		@image.each_with_index do |row, i|
			row.each_with_index do |column, e|
			if (i == 1 && e == 1)
				print 3
			else
				print 0
			end
		end
			puts "\n"
		end
	end

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
	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 0, 0, 1],
	[0, 0, 0, 0]
])

# image.blur

image.output_image