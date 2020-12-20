# frozen_string_literal: true

# basically stores a key/value pair
# similar to a dictionary
# a lot of ways to define

puts '+++++++++++++ Two ways using symbols +++++++++++++'
hs = { a: 1, b: 2, c: 3 }
# hs2 = { :a => 1, :b => 2, :c => 3 } #this syntax is valid but not recommended

p hs
# p hs2

puts '\n\n+++++++++++++ Using Strings as keys +++++++++++++'

states = {
  'Pennsylvania' => 'PA',
  'Oregon' => 'OR',
  'Kentucky' => 'KY'
}
p states

puts '\n\n+++++++++++++ Using Numbers as keys and values +++++++++++++'

s2 = {
  3534 => 'PA',
  5.676 => 'OR',
  1 => 'KY'
}
p s2

s3 = {
  22 => 55,
  432 => 44
}
p s3

puts '\n\n+++++++++++++ Iterate over hash +++++++++++++'

states.each do |key, value|
  puts "#{key} points to #{value}"
end

puts '\n\n+++++++++++++ Adding/Changing values +++++++++++++'

p 'Before'
p states
p 'Adding Washington'
states[:Washington] = 'WAxxx'
p states
p 'Changing'
states[:Washington] = 'WA'
p states
p 'Removing'
states.delete(:Washington)
p states

puts '\n\n+++++++++++++ Running Select +++++++++++++'

sel = s2.select { |k, _v| k > 4 }
p sel
