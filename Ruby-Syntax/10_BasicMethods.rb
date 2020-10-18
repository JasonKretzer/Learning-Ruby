
# use a similar syntax for method declaration to other languages
def sayHi(name="no name", age=-1)
    puts "Hello, #{name}." + "You are " + age.to_s
end

sayHi("Jason", "73")
sayHi("Bob", 75)

# methods can optionally set default values as well
sayHi

def cube(num)
    num * num * num # return statement not really needed
end

def cube2(num)
   return ( num * num * num )
end

puts cube(2)
puts cube2(2)

puts "======================"

# can also return multiple values -- and can be accessed like an array
def returnMultipleValues
    return "Charlie", 1, false
end

returnValues = returnMultipleValues

puts returnValues
puts "======================"
puts returnValues[2] #false



