################################ CREATING ARRAYS ################################

# create an array with an Integer, a String, and a Float:

ary = [1, "two", 3.0]
#=> [1, "two", 3.0]

# an array can be created by calling Array.new with 0, 1, or 2 arguments

ary = Array.new
#=> []

Array.new (3)
#=> [nil, nil, nil]

Array.new (3, true)
#=> [true, true, true]

# you can pass a block to create an array with separate objects:

Array.new(4) { Hash.new }
#=> [{}, {}, {}, {}]

# also a quick way to build multi-dimensional arrays:

empty_table = Array.new(3) { Array.new(3) }
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

# Can also be created by using the Array() method

Array({:a => "a", :b => "b"})
#=> [[:a, "a"], [:b, "b"]]


################################ ACCESSING ELEMENTS ################################

# elements in an array can be retrieved using the #[] method.

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr[2] 		#=> 3
arr[100]	#=> nil
arr[-3]		#=> 4
arr[2, 3]	#=> [3, 4, 5]
arr[1..4]	#=> [2, 3, 4, 5]
arr[1..-3]	#=> [2, 3, 4]

# another way to access a particular array method is by using the .at method

arr.at(0)	#=> 1
arr.at(4)	#=> 5

# arr.slice works identically to arr.at

arr.slice(0)	#=> 1
arr.slice(4)	#=> 5

# to raise an error for indices outside the array bounds, use .fetch

arr = ['a', 'b', 'c', 'd', 'e', 'f']
#=> ["a", "b", "c", "d", "e", "f"]
arr.fetch(100) 			#=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") 	#=> "oops"

# .first and .last return the first and last elements of an array

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.first	#=> 1
arr.last	#=> 5

# To return the first "n" elements of an array, use .take:

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.take(3)
#=> [1, 2, 3]
arr.take(4)
#=> [1, 2, 3, 4]

# .drop does the opposite of .take by returning the elements
# after "n" elements have been dropped

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.drop(3)
#=> [4, 5]
arr.drop(4)
#=> [5]


################################ OBTAINING INFORMATION ABOUT AN ARRAY ################################

# Arrays keep track of their own length at all times.
# Use .length, .count, or .size to find number of elements

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
#=> ["Chrome", "Firefox", "Safari", "Opera", "IE"]
browsers.length
#=> 5
browsers.count
#=> 5
browsers.size
#=> 5

# Check whether an array contains any elements:

browsers.empty?
#=> false

# Check whether a particular item is in the array:

browsers.include?('foobarbs')
#=> false


################################ ADDING ITEMS TO ARRAYS ################################



################################

################################

################################

################################

################################