# Given an array of integers
# only grab the even integers
p (1..10).to_a.select do |x|
  x.even?
end

p (1..10).to_a.select { |x| x.even? }

p (1..10).to_a.select(&:even?)


# Given an array of strings
# return only the words that are over 5 letters
arr = %w(The quick brown fox jumped over lazy dog)
p arr.select { |x| x.length > 5 }


# Given an array of strings
# Return all of the vowels
p %w(a b c d e f g h i j k l m n o p q).select { |v| v =~ /[aeiou]/ }
