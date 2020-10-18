

# basically stores a key/value pair
# similar to a dictionary

states = {
    "Pennsylvania" => "PA",
    "Oregon" => "OR",
    "Kentucky" => "KY"
}

# saw this syntax with the key and wanted to use it

states2 = {
    :Pennsylvania => "PA",
    "Oregon" => "OR",
    "Kentucky" => "KY"
}

# can put ints and decimals as keys as well
states3 = {
    1 => "PA",
    2.3 => "OR",
    678 => "KY"
}
groups = {
    :Pennsylvania => "PA",
    "Oregon" => "OR",
    "KY" => "Kentucky",
    "group1" => states
}

puts states2["Kentucky"] # KY
puts "========================"
puts states2[:Pennsylvania] # PA
puts "========================"
puts states3[2.3] # OR
puts "========================"
puts groups # the whole hash
puts "========================+"

# we can nest these things, too
puts groups[groups["group1"]["Kentucky"]] # Kentucky