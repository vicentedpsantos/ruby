# While
i = 0

while i < 3
  puts 'Hey there'
  i += 1
end

# Each
arr = %w[augusto roberto vicente]
arr.each do |i|
  puts i
end

arr.each { |i| puts i }

#For
for i in 0..5
  puts i
end

for i in arr
  p i
end

# Nested iterators
teams = {
  "Houston Astros": {
    "first base": "Chris Carter",
    "second base": "Jose Altuve",
    "shortstop": "Carlos Correa"
  },
  "Texas Rangers": {
    "first base": "Prince Fielder",
    "second base": "R. Odor",
    "shortstop": "Elvis Andrus"
  }
}

teams.each do |team, players|
  puts team
  puts "\n"
  players.each do |position, player|
    puts "Player: #{player} \t \t Position: #{position}"
  end
end
