# if
x = 10
y = 5

if x == y
  puts 'x is the same as y'
else
  puts 'x and y are not the same'
end

# unless
players = %w[Correa Carter Altuve]

players.each { |player| puts player } unless players.empty?

# if elses
x = 10
y = 100
z = 10

if x == y
  puts 'x is equal to y'
elsif x > z
  puts 'x is greater than y'
else
  puts 'something else'
end

# compound conditionals
if(x == 10 && x == z) || x == y
  puts 'from the if statement'
end
