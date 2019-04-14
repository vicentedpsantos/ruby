def full_name(first_name, last_name)
  first_name + ' ' + last_name
end

p full_name('Vicente', 'Santos')
p full_name 'Vicente', 'Santos'

# named arguments

def print_address(city:, state:, zip:)
  puts city
  puts state
  puts zip
end

print_address(city: 'Scottsdale', state: 'AZ', zip: 85_251)

def sms_generator(api_key:, num:, msg:, locale:)
  puts 'Sending sms'
end

sms_generator(api_key: '5895', num: '+5591958', msg: 'hey there', locale: 'US')

# default arguments
def stream_movie(title:, lang: 'ENG')
  puts title
  puts lang
end

stream_movie(title: 'The Foundainhaid')
stream_movie(title: 'Diehard', lang: 'FR')
