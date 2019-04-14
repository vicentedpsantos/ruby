full_name = proc { |first, last| first + ' ' + last }

p full_name['Vicente', 'Santos']
p full_name.call('Vicente', 'Santos')

prints_multiple_names = proc do |first|
  first * 5
end

p prints_multiple_names['Vicente']
p prints_multiple_names.call('Vicente')
