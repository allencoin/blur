class Image
	def initialize(image)
		@image = image
	end

	def output_image
		@image.each do |x|
			x.each do |y|
				if y == 1
					x.delete(1)
				end
			end
			puts x.join(" ")
		end
	end
end

image = Image.new([
	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 0, 0, 1],
	[0, 0, 0, 0]
])

image.output_image