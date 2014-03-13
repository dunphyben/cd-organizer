require 'artist'

class CD

  @@all_cds = []
  attr_reader :title, :artist

  def initialize(attributes)
    @artist = attributes[:artist]
    @title = attributes[:title]
  end


  def CD.create(title, artist)
    new_artist = Artist.create(artist)
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
    @@all_cds = []
  end

  def CD.search(search_word)
    index_of_search_word = CD.all.find_index { |cd| cd.artist == search_word }
    @@all_cds[index_of_search_word]
  end

end














