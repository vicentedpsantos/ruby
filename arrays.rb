x = [12, 3, 234, 31]
p x

y = []
y[0] = 13
y[10] = 23
p y
p y.each do |y|
  puts y
end

# Delete values
x = ['asdf', 3, 4, 12, true, 2.3]
p x.length
x.delete(4)
p x.length
deleted = x.delete_at(2)
puts deleted

# delete if
batting_averages = [0.300, 0.189, 0.220, 0.250]
p batting_averages
batting_averages.delete_if { |average| average < 0.24 }
p batting_averages

# join, pop methods
teams = ['Baltimore Orioles',
         'Arizona Diamondbacks',
         'Boston Red Sox',
         'Chicago White Sox',
         'Atlanta Braves',
         'Chicago Cubs',
         'Cleveland Indians',
         'Cincinnati Reds',
         'Detroit Tigers',
         'Colorado Rockies',
         'Houston Astros',
         'Los Angeles Dodgers',
         'Miami Marlins',
         'Kansas City Royals',
         'Milwaukee Brewers',
         'Los Angeles Angels',
         'New York Mets',
         'Minessota Twins',
         'Oakland Athletics',
         'Pittsburgh Pirates',
         'San Diego Padres',
         'Seattle Mariners',
         'Tampa Bay Rays',
         'San Francisco Giants',
         'St. Louis Cardinals',
         'Texas Rangers',
         'Toronto Blue Jays',
         'Washington Nationals']

p teams.join(', ')
p teams.push('Porto Alegre Gremio')
p teams.pop
