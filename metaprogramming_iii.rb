# Defining dynamic methods

class Author
  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.coding_details("Cal Newport")
author.coding_details("Steven Spielberg")
author.coding_details("Eduardo Bueno")
p author.respond_to?(:coding_details)
