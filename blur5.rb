class Image
	attr_accessor :image

	def initialize(array)
		@image = array
	end

	def output_image
		@image.each do |row|
			row.each do |column|
			print column
			# if (i == 2 && e == 3)
			# 	print "XX"
			# else
			# 	print "YY"
			# end
		end
			puts "\n"
		end
	end

	def blur
		blurred = []

		@image.each_with_index do |row, i|
			row.each_with_index do |element, e|
				if element == 1
					blurred << element
				elsif element == 0
					blurred << 0
				end
				print @blurred
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

image.output_image

image.blur