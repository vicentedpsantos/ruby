# Local Variables
2.times do
  x = 10
  p x
end

# Global Variables
3.times do
  $x = 20
  p $x
end

p $x

# Instance Variables
@batting_average = 300

# Constant
TEAM = "Angels"
TEAM = "Athletics"

p TEAM

# Class Variable
class MyClass
  @@teams = ['Tigers', 'Mets']
end
