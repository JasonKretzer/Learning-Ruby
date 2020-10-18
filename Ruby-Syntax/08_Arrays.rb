
# string array with initialization
friends = Array["Charlie","Linus","Marcie"]

# arrays can have multiple data types in them
mixbag = Array[1, "Bob", false]

puts mixbag
puts "================================"

# standard array indexing applies
# also has negative indexing


# Can get a range of values, too
# choose a starting index and then the number of elements
                                    #[4]
mixbag2 = Array[1, "Bob", false, 2, true, 7.5, "Alice"]

puts mixbag2[2,4]
puts "================================"


# declare a new Array
vals = Array.new
# you can then assign to any index and ruby will put in blanks

# if the array has al the same datatypes, you can use sort() as well
# I wonder if there is a way to change the default sorting behavior


# also has a length() function