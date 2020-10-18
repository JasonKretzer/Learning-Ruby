
# can escape special characters
puts "Bob stood agains the wall to \"hold\" it up."

# can also put it in single quotes to not escape the double quotes
puts 'Bob stood agains the wall to "hold" it up.'

# string variable is an object and has methods
phrase = "    Bob stood against the wall to \"hold\" it up.    "
puts phrase.upcase()
puts phrase.length()

# strip is similar to trim in C#
puts phrase.strip()
puts phrase.length()

# search for a substring -- returns boolean
puts phrase.include? "ugh"
puts phrase.include? "st th"

# can access characters at an index like a 0 based array
puts phrase.strip()[4]

# get a substring using starting index and then how many characters you want
puts phrase.strip()[1,7]

# first index of a character/string
puts phrase.strip().index("wa")

# call a method on a constant string, too
puts "Holy Cow".upcase()

# you don't need to do it but you can also call to_s on a string
# and it won't hurt anything.  This allows you to accept 
# a number or a string and concatenate it into a string output

#THERE ARE A LOT OF METHODS FOR STRINGS