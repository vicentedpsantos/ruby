positions = {
  first_base: 'Chris Carter',
  second_base: 'Jose Altuve',
  shortstop: 'Carlos Correa'
}

p positions[:second_base]
p positions[:first_base]
p positions[:shortstop]

# Delete from hash
people = {
  vicente: 28,
  augusto: 29,
  roberto: 23
}

p people[:vicente]
people.delete(:vicente)
p people

# grabbing keys
people.each_key do |key|
  puts key
end

p people.keys

# grabbing values
people.each_value do |value|
  puts value
end

p people.values

# grabbing both key and values
people.each do |key, value|
  puts "#{key}, age: #{value}"
end

# adding to a hash
people[:neide] = 50
p people

# reversing hash
people_inverted = people.invert
p people_inverted

# merge two hashes
p people.merge(people_inverted)

# making it an array
p people.to_a
