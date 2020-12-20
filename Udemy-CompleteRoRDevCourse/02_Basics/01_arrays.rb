# frozen_string_literal: true

# some review of basic stuff
a = [1, 2, 3, 4, 5]

# also be written like this
# a = Array[1, 2, 3, 4, 5]

# can mix and match data in an array
mixbag = Array[1, 'Bob', false]

p a
p mixbag
puts a

# can use a range
x = 1..100

p '================to_a===================='
# use the to_a method that will return an array from the range
# Note this does not modify x
p x.to_a

p '================Shuffle===================='

# shuffle method will return an array from the range but randomizes order
# Note this does not modify x
p x.to_a.shuffle

p '================Modify the calling array===================='
z = x.to_a
p 'Z before shuffle'
p z
z.shuffle!
print "\n\n\n"
p 'Z after shuffle with a ! after it to modify z'
p z

p '================Reverse===================='

p x.to_a.reverse

# can also make a range from letters
a = 'a'..'z'
p a.to_a

p '================Length===================='
p a.to_a.length # remember don't need () at end of length

b = a.to_a

p '================Append / Prepend===================='

# Shovel operator is <<
# bascially means to append to the end of an array
b << 'A String after Z'

# can also use append method
b.append('Another String after Z')

p b

# get first element
p b.first

# get last element
p b.last

# prepend to array
b.unshift('A String before A')

p b

puts '\n\n\n=====================Unique==================='

# gets unique elements of the array and returns them in an array
# use ! to modify b
p b.uniq

puts '\n\n\n=====================Arrays as Stacks==================='

# push to the end of the array
b.push('pushed item')

p b

# remove from the end and return the item
p b.pop

puts '\n\n\n=====================Join and Split==================='

# make a string from all the elements and return it
p b.join

# or can add a delmiter in the string
p b.join('-')

c = b.join('-')

p c

# split according to a delimiter
p c.split('-')

# make an array out of a group of items
d = %w([Jason was here.])

p d

puts '\n\n\n=====================Iterators==================='

# translates to for each item in d that we call word print the item
d.each do |word|
  puts word
end

# can one-line it, too
# d.each { |word| puts word }

puts '\n\n\n=====================Select==================='
f = (1..100).to_a.shuffle

# a little collection processing action here
# in C# would be something like: f.Where(number => number%2 == 1)
# g = f.select { |number| number.odd? }

# another way to do it
g = f.select(&odd?)

p g
