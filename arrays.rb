# notes on Ruby Docs - Arrays 
# http://ruby-doc.org/core-2.1.3/Array.html

# this file is fun to run all at once

################################ CREATING ARRAYS ################################

# create an array with an Integer, a String, and a Float:

ary = [1, "two", 3.0]
#=> [1, "two", 3.0]

# an array can be created by calling Array.new with 0, 1, or 2 arguments

ary = Array.new
#=> []

Array.new(3)
#=> [nil, nil, nil]

Array.new(3, true)
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

# Items can be added to the end of an array by using either .push or <<

arr = [1, 2, 3, 4]
#=> [1, 2, 3, 4]
arr.push(5)
#=> [1, 2, 3, 4, 5]
arr.push(6)
#=> [1, 2, 3, 4, 5, 6]
arr.push(100)
#=> [1, 2, 3, 4, 5, 6, 100]
arr << 300
#=> [1, 2, 3, 4, 5, 6, 100, 300]

# .unshift will add a new item to the beginning of an array.

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.unshift(0)
#=> [0, 1, 2, 3, 4, 5]
arr.unshift(42)
#=> [42, 0, 1, 2, 3, 4, 5]

# .insert adds a new elements to an array at a specific position

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.insert(3, 'apple')
#=> [1, 2, 3, "apple", 4, 5]

# .insert can also add multiple elements at once:

arr.insert(3, 'orange', 'pear', 'grapefruit')
#=> [1, 2, 3, "orange", "pear", "grapefruit", "apple", 4, 5]


################################ REMOVING ITEMS FROM AN ARRAY ################################

# the .pop method removes the last element in an array and returns it

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.pop
#=> 6
arr
#=> [1, 2, 3, 4, 5]

# use .shift to return and remove the first item

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.shift
#=> 1
arr
#=> [2, 3, 4, 5]

# use .delete_at(X) to delete an element at a particular index

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.delete_at(2)
#=> 3
arr
#=> [1, 2, 4, 5]

# user .delete(X) to delete a particular element anywhere in an array

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.delete(2)
#=> 2
arr
#=> [1, 3, 4, 5]

arr = ['cat', 'dog', 'horse']
#=> ["cat", "dog", "horse"]
arr.delete('cat')
#=> "cat"
arr
#=> ["dog", "horse"]

# use .compact (non-destructive) or .compact! (destructive) to delete nil values in an array

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
#=> ["foo", 0, nil, "bar", 7, "baz", nil]
arr.compact
#=> ["foo", 0, "bar", 7, "baz"]
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
#=> ["foo", 0, nil, "bar", 7, "baz", nil]
arr.compact!
#=> ["foo", 0, "bar", 7, "baz"]

# to remove duplicate elements, use .uniq (non-destructive) or .uniq! (destruct)

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
#=> [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq
#=> [2, 5, 6, 556, 8, 9, 0, 123]
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
#=> [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq!
#=> [2, 5, 6, 556, 8, 9, 0, 123]


################################ ITERATING OVER ARRAYS ################################

# use .each to iterate over an array. Leaves array unchanged.

arr = [1, 2, 3, 4, 5]
#=> [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# -9 -8 -7 -6 -5 => [1, 2, 3, 4, 5]
arr.each { |a| print a *= 10, " " }
# 10 20 30 40 50 => [1, 2, 3, 4, 5]

# .reverse_each will iterate over the elements in the array in reverse order

words = %w[first second third fourth fifth sixth]
#=> ["first", "second", "third", "fourth", "fifth", "sixth"]
str = ""
#=> ""
words.reverse_each { |word| str += "#{word} " }
#=> ["first", "second", "third", "fourth", "fifth", "sixth"]
p str
#"sixth fifth fourth third second first "
#=> "sixth fifth fourth third second first "

# use .map to create a new array based on the origin array, but with the values modified by the supplied block

arr.map { |a| 2*a }
#=> [2, 4, 6, 8, 10]
arr
#=> [1, 2, 3, 4, 5]
arr.map! { |a| a**2 }
#=> [1, 4, 9, 16, 25]
arr
#=> [1, 4, 9, 16, 25]


################################ SELECTING ITEMS FROM AN ARRAY ################################

# elements can be selected from an array according to criteria
# defined in a block. The selection can happen in a destructive
# or non-destructive manner. While the destructive operations
# will modify the array they were called on, the non-destructive
# methods usually returns a new array with the selected elements
# but leave the original array unchanged

######## >>>>> Non-destructive Selection

# .select, .refect, and .drop_while

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.select { |a| a > 3 }
#=> [4, 5, 6]
arr.reject { |a| a < 3 }
#=> [3, 4, 5, 6]
arr.drop_while { |a| a < 4 }
#=> [4, 5, 6]
arr
#=> [1, 2, 3, 4, 5, 6]

######## >>>>> Destructive Selection

# .select!, .reject! are descrutive versions of those above

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.select! { |a| a > 3 }
#=> [4, 5, 6]
arr
#=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.reject! { |a| a < 3 }
#=> [3, 4, 5, 6]
arr
#=> [3, 4, 5, 6]

# .delete_if and .keep_if have the opposite result if given the same block
# similar to .select and .reject

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.delete_if { |a| a < 4 }
#=> [4, 5, 6]
arr
#=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
#=> [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 }
#=> [1, 2, 3]
arr
#=> [1, 2, 3]