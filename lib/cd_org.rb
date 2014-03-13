class CD

  @@all_cds = []
  attr_reader :title, :artist

  def initialize(artist, title)
    @artist = artist
    @title = title
  end

  def CD.create(artist, title)
    new_cd = CD.new(artist, title)
    new_cd.save
    new_cd
  end

  def CD.all
    @@all_cds
  end

  def CD.clear
    @@all_cds = []
  end

  def save
    @@all_cds << self
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

  # def search(searched_artist)
  #   for @artist
  #     in @@all_cds
  #       if searched_artist.found? == true
  #         @artist
  #       end
  #     end
  #   end
  # end

  def CD.search(search_word)
    index_of_search_word = CD.all.find_index { |cd| cd.artist == search_word }
    @@all_cds[index_of_search_word]
  end




end














