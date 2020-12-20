# frozen_string_literal: true

require_relative 'bcrypter'

# basic Student class
class StudentMixin
  include BCrypter

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(fname, lname, eml, uname, pwd)
    @first_name = fname
    @last_name = lname
    @email = eml
    @username = uname
    @password = pwd
  end
end
