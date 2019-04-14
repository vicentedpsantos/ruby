# Splat argument
def roster *players
  p players
end

roster('Altuve', 'Gattis', 'Springer')
roster('Bregman', 'Correra')

# Key Argument
def roster_2 **players_with_positions
  players_with_positions.each do |player, position|
    puts "Player: #{player}, Position: #{position}"
    puts "\n"
  end
end

data = {
  "Altuve": "2nd Base",
  "Alex Bregman": "3rd Base",
  "Evan Gattis": "Catcher",
  "George Springer": "OF"
}

roster_2 data

# Optional Arguments
def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end

invoice company: "Google", total: 100.00, state: 'Off'
