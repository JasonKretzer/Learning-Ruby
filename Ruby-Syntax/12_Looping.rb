
index = 1

# while loops act like a standard while loop
while index <= 5
    puts index
    if index == 1
        index += 2
        next
    end
    index += 1
    
end

# break in a loop acts as expected
# continue does not exist, use next instead

puts "========================"

index = 1

# there is also a redo which redoes the current iteration 
while index <= 5
    puts index
    if index == 1
        index += 2
        redo
    end
    index += 1
    
end

puts "==========================="
# FOR LOOPS
###############################

friends = ["Charlie", "Linus", "Schroeder", "Lucy"]

#similar to a foreach in other languages
for friend in friends
    puts friend
end

puts "==========================="

# another for
friends.each do |friend|
    puts friend
end

puts "==========================="

# iterate over a range of numbers
for index in 0..5
    puts index
end

puts "==========================="

# using a function of a number
6.times do |index|
    puts index
end