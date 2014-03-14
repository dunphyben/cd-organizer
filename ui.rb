require './lib/cd'
require './lib/artist'

def main_menu
  puts "-"*40, "Main Menu\n", "-"*40
  puts "\tn: Add a new CD to your library\n",
       "\tl: List all of your CDs\n",
       "\ts: Search your library for an album\n",
       "\tx: Exit CD library"

  print "\nChoose an option: "
  choice = gets.chomp

  case choice
  when 'n'
    add_cd
    main_menu
  when 'l'
    list_cds
    main_menu
  when 's'
    search_cds
    main_menu
  when 'x'
    puts "Goodbye! iTunes sucks."
  else
    puts "Invalid option!"
    main_menu
  end
end


def add_cd
  print "Enter the artist name of your CD: "
  new_name = gets.chomp
  print "Enter the album name of your CD: "
  new_title = gets.chomp
  CD.create(new_name, new_title)
  puts "\n\nThe album #{:title} by the artist #{:artist} has been added to your CD library!"

end

def list_cds
  print "\nCD LIBRARY:\n"
  puts '*'*30
  CD.all.each do |i|
    puts "'" + i.title + "'" + " by " + i.artist
  end
end


def search_cds
  puts "\tEnter \'artist\' to search by Artist",
        "\tEnter \'album\' to search by Album"
  sub_search = gets.chomp

  case sub_search
  when 'artist'
    artist_search
    main_menu
  when 'album'
    album_search
    main_menu
  else
    puts "Invalid option!"
    search_cds
  end
end

def artist_search
  print "Which artist are you looking for? "
  search_artist = gets.chomp
  puts CD.search_artist(search_artist)

end

# def album_search
#   print "Which album are you looking for? "
#   search_word = gets.chomp
#   result = nil
#   CD.all.each do |cd|
#     if cd.title == search_word
#       result = cd
#     end

#     if result.nil?
#       puts "Artist not in library."
#     else
#   end

# end


# CD.all.each do |artist|
  #   if artist.search_word == search_word
  #     result = artist
  #   end
  # end
  # if result.nil?
  #   puts "Artist not in library."
  # else
  #   puts
  #     "\n\t" + searched_word.artist + ":" + " " + "'" + searched_word.title + "'"
  # end




  # if search_word == searched word

  # else
  #   puts "\nArtist not found in library"
  # end
# end

main_menu

















