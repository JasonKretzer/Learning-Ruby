# frozen_string_literal: true

# basic Student class
class Student
  def initialize(fname, lname, eml, uname, pwd)
    @first_name = fname
    @last_name = lname
    @email = eml
    @username = uname
    @password = pwd
  end

  # SETTERS
  # can set up multiple ways to set the private instance variables

  # first a method way -- can be named whatever
  # commented due to linting errors because it is a "trivial writer" method
  # can set by calling student_instance.first_name('a name')
  # def first_name(new_name)
  #   @first_name = new_name
  # end

  # another kind of a method way, though it looks awkward
  # because it is actually calling a method and not directly setting the variable
  # commented due to linting errors because it is a "trivial writer" method
  # can set by calling student_instance.first_name=('a name')
  # def first_name=(new_name)
  #   @first_name = new_name
  # end

  # ===================================================================

  # GETTERS
  # can set up multiple ways togset the private instance variables

  # a method way -- can be named whatever
  # it is actually calling a method and not directly getting the variable
  # commented due to linting errors because it is a "trivial reader" method
  # can be accessed by calling student_instance.first_name
  # def first_name
  #   @first_name
  # end

  # can setup readers/writers for your instance variables
  # attr_reader -- readonly
  # attr_writer -- writeonly
  attr_accessor :first_name, :last_name, :email, :username, :password
  # this allows them to be read/write by calling
  # student_instance.first_name
  # student_instance.email
  # etc
end
