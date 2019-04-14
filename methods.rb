def baseball_team_list
  ["A's", 'Angels', 'Astros']
end

def second_baseball_team_list
  x = rand(0..20)
  return %w[Yankees Mets] if x.even?

  ['Red Sox', 'Cubs', 'Tigers', 'Padres']
end

p baseball_team_list
p second_baseball_team_list

# return versus puts
def void_method
  puts 'Hey there'
end

def method_with_return
  'Hey there'
end

void_method
method_with_return

x = void_method
p x

y = method_with_return
p y
