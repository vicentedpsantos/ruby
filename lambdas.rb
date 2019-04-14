first_name = lambda {|first, last| first + " " + last}
p first_name.call("Vicente", "Santos")

first_name = ->(first, last) { first + " " + last }
p first_name["Vicente", "Santos"]
