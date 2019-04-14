string = "The quick 12 brown foxes jumped over the 10 lazy dogs"
p string =~ /quick/

p string =~ /z/ ? "Valid" : "Invalid"
p string =~ /Z/i ? "Valid" : "Invalid" #=> Case insensitive search

p string.to_enum(:scan, /\d+/).map { Regexp.last_match }

# E-mail validator
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email?(email)
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("vicentedpsantos@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("vicentedpsantosgmail.com") ? "Valid" : "Invalid"
p is_valid_email?("vicentedpsantos@gmailcom") ? "Valid" : "Invalid"
p is_valid_email?("vicentedpsantos@gmail") ? "Valid" : "Invalid"
