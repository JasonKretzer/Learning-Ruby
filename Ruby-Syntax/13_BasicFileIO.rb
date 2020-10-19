
# file opening modes mostly intuitive
# r read 
# r+ read write -- allowing overwriting at a position
# w truncate and write/create new
# w+ same as w but can also read 
# a append
# a+ can read and append

# modes all follow a similar pattern

# open text file in read mode
File.open("13_People.txt", "r") do |file|
    
    puts "===="
    for line in file.readlines() # gives an array of lines
        puts line
    end
    puts "===="
    
end # this closes the file


# file.read() -- read the whole file at once
# can also do a file.readline and readchar


# another open but have to remember to close the file
file = File.open("13_People.txt", "r")
puts "===="
for line in file.readlines() # gives an array of lines
    puts line
end
puts "===="
file.close()

