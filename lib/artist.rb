class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    song.artist
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
    song.artist
  end

  def self.song_count
    @@song_count
  end
end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end
end
