class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = @name
  end

  def artist
    @name
  end
end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.name.artist
  end
end
