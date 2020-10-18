
# get user input from cli -- but watch for newline characters!
print "Enter name: "
name = gets
puts ("Hello, " + name + ".  You are great!")

# get rid of newline from gets
print "Enter name: "
name = gets.chomp()
puts ("Hello, " + name + ".  You are great!")
