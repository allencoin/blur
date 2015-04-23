################################ UNDERSTANDING 2D ARRAYS ################################
# notes using this post as reference: http://www.dotnetperls.com/2d-array-ruby

#####Ruby program that uses 2D array

# This 2D array contains two sub-arrays
values = Array[[10, 20, 30], [40, 50, 60]]
values.each do |x|		# Loop over each row array
	x.each do |cell|	# Loop over each cell in the row
		puts cell
	end
	puts "--"			# End of row
end

# Output: 
# 10
# 20
# 30
# --
# 40
# 50
# 60
# --

##### Push method. 

values = []

# Create first row
subarray = []
subarray.push(1)
subarray.push(2)
subarray.push(3)

# Add first row
values.push(subarray)

# Create second row
subarray = []
subarray.push(10)
subarray.push(20)
subarray.push(30)

# Add second row
values.push(subarray)

# Load an element
puts "Third element in first row is: " << String(values[0][2])

# CHange this element
values[1][1] = 500

#Display all elements
values.each do |x|
	x.each do |y|
		puts y
	end
	puts "--"
end

# Output: 

# Third element in first row is: 3
# 1
# 2
# 3
# --
# 10
# 500
# 30
# --

# All together now!

values = []

subarray = []
subarray.push(1)
subarray.push(2)
subarray.push(3)

values.push(subarray)

subarray = []
subarray.push(10)
subarray.push(20)
subarray.push(30)

values.push(subarray)

puts "Third element in first row is: " << String(values[0][2])

values[1][1] = 500

values.each do |x|
	x.each do |y|
		puts y
	end
	puts "--"
end

#### Indexes

# how to access each cell in a 2D array

# This is an irregular 2D array (a jagged array)
values = [["A", "B", "C"], ["D", "E", "F"], ["G", "H"]]

# Loop over indexes
values.each_index do |i|

	# Get subarray and loop overits indexes as well
	subarray = values[i]
	subarray.each_index do |x|
	# Display the cell 
	puts String(i) << " " << String(x) << "... " << values[i][x]
	end

end

# Output

# 0 0... A
# 0 1... B
# 0 2... C
# 1 0... D
# 1 1... E
# 1 2... F
# 2 0... G
# 2 1... H

#### Flatten
# with .flatten and .flatten! we convert a multidimensional array into a flat one

gems = [["ruby", 10], ["sapphire", 20]]
#=> [["ruby", 10], ["sapphire", 20]]
p gems
[["ruby", 10], ["sapphire", 20]]
#=> [["ruby", 10], ["sapphire", 20]]
gems.flatten!
#=> ["ruby", 10, "sapphire", 20]
p gems
["ruby", 10, "sapphire", 20]
#=> ["ruby", 10, "sapphire", 20]
