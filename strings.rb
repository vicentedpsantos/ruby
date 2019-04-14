puts 'Name an animal'
animal = gets.chomp

puts 'Name a noun'
noun = gets.chomp

p "The quick brown #{animal} jumped over the lazy #{noun}"

# String manipulation
puts "Astros".upcase
puts "Astros".reverse
puts "Astros".reverse.upcase

# String substitution

str = "The quick brown fox jumped over the quick dog"
p str.sub("quick", "slow")
p str.gsub("quick", "slow")

# Use of Strip
string = "     The quick brown fox jumped over the quick dog      "
p string.strip
p string.split
p string.split(//)
