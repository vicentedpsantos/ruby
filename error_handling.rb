# begin
#   puts nil + 10
# rescue ZeroDivisionError => e
#   puts "Error ocurred: #{e}"
# rescue NoMethodError => e
#   puts "Error ocurred: #{e}"
# end

# Creating error logger
def error_logger(e)
  File.open('errors.txt', 'a') do |file|
    file.puts e
  end
end

begin
  puts nil + 10
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
