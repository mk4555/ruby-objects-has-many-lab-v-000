class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(Song)
    @songs << Song
    song.name = @name
  end
end
