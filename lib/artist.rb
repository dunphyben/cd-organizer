class Artist

  @@all_artists = []

  def initialize(artist_name)
    @artist = artist_name
  end


  def Artist.create(artist_name)
    new_artist = Artist.new(artist_name)
    new_artist.save
    new_artist
  end


end
