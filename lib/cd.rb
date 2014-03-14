# require 'artist'

class CD

  @@all_cds = []
  attr_reader :title, :artist

  def initialize(attributes)
    @artist = attributes[:artist]
    @title = attributes[:title]
  end


  def CD.create(title, artist)
    # new_artist = Artist.create(artist)
    new_cd = CD.new({:title => title, :artist => artist})
    @@all_cds << new_cd
    new_cd
  end

  def CD.all
    @@all_cds
  end

  def CD.clear
    @@all_cds = []
  end

  def edit_title(new_title)
    @title = new_title
  end

  def edit_artist(new_artist)
    @artist = new_artist
  end

  def remove_cd(title)
    CD.all.delete(self)
  end

  def CD.search_artist(search_artist)
    found_artists = []
      CD.all.each do |i|
        if search_artist == i.artist
          found_artists << i.title
        end
      end
      found_artists
  end

  # def CD.search_album(search_word)
  #   index_of_search_word = CD.all.find_index { |cd| cd.title == search_word }
  #   @@all_cds[index_of_search_word]
  # end

end


a = CD.create('Thriller', 'Michael Jackson')
b = CD.create('Octahedron', 'The Mars Volta')
c = CD.create('The Battle of Los Angeles', 'Rage Against the Machine')
d = CD.create('Bedlam in Goliath', 'The Mars Volta')
e = CD.create('Bad', 'Michael Jackson')
