# Argument Count
full_name = ->(first, last) { first + ' ' + last }
p full_name.call('Vicente', 'Santos')

full_name = proc { |first, last| first + ' ' + last }
p full_name.call('Vicente', 'Daniel', 'Santos')

# Return behavior

def my_method
  x = -> { return }
  x.call
  p 'text from within the method'
end

my_method

def my_method
  x = proc { return }
  x.call
  p 'text from within the method'
end

my_method
