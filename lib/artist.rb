class Artist

  @@all_artists = []

  attr_reader :artist_name

  def initialize(artist_name)
    @artist_name = artist_name
  end

  def Artist.create(artist_name)
    new_artist = Artist.new(artist_name)
    @@all_artists << new_artist
    new_artist
  end

  def Artist.all
    @@all_artists
  end

  def edit_artist_name(new_artist_name)
    @artist_name = new_artist_name
  end

  def remove
    Artist.all.delete(self)
  end

end
