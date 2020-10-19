
# similar to a try catch with a generic exception catch
begin
    num = 10/0
rescue
    puts "Don't divide by zero."
end

arr = Array[1,2,3,4,5,6]

# more specific rescue
begin
    arr["dog"]
    num = 10/0
rescue ZeroDivisionError
    puts "Don't divide by zero."
rescue TypeError => e  # can store it in a variable
    puts e
end

# how to raise an exception
num1 = 10
num2 = 0

if num2 == 0
    raise "Don't divide by zero here either"
end