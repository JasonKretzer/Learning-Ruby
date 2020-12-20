# frozen_string_literal: true

# generic test User class
class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts 'Hey I\'m running'
  end

  def identify_yourself
    puts 'Hey I am an instance method'
    puts @name # this will print the value of name for the instance variable
    puts :name # this just gives the name of the symbol
  end

  # putting self in front of the method name makes it a 'class method'
  # kind of like a static method
  def self.identify_yourself
    puts 'Hey I am a class method -- ie static'
    puts @name # this will not print anything
    puts :name # this just gives the name of the symbol
  end
end

user = User.new('mashrur', 'mashrur@example.com')
user.run
puts 'instance.identify_yourself'
user.identify_yourself
puts '\n\nstatic identify_yourself'

User.identify_yourself
# to run this class method you don't need an instance of user
# you can directly call the class User -- kind of like a static method
# However, note that @name is not printed
