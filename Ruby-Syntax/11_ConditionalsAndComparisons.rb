# standard if, else, and else structure is used
# can also use the logical "!", "and", and "or" conditionals as well
value = -2

isEven = value%2.0 == 0
isOdd = value%2.0 != 0

# contrived conditionals
if isEven
    puts "Value was even!"
elsif isOdd
    puts "Value was not even!"
else
    puts "WHAT?"
end

puts "========================"


# remember that return keyword is optional
def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else
        num3
    end
end

puts max(2.1, 2, 3)
puts max(2.1, 22, 3)
puts max(3.1, 2, 3)

puts "=========================="

# string comparisons
# can use == or eql? methods
puts "John" == "Fred" # false
puts "John".eql? "john" # false

puts "=========================="

# alphabetical ranking
puts "John" <=> "Fred"  # returns 1, John is after Fred
puts "Fred" <=> "John"  # returns -1, John is after Fred
puts "John" <=> "John"  # returns 0, names are same

puts "=========================="

# case sensitive strings
puts "John".casecmp "John"  # returns 0, they are the same
puts "John".casecmp "john"  # also returns 0, they are the same since case does not matter

puts "=========================="


# case/when expressions used like a switch statement
def get_day_name(day)
    day_name = ""
    case day
    when "sun"
        day_name "Sunday"
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    else
        raise "Invalid day abbreviation!"
    end

end

puts get_day_name("fri")