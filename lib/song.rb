class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end
  
  def self.new_by_fileName(filename)
    array = filename.split(" - ")
    name = array[1]
    artist = array[0]
    genre = array[2]
    
    song  = self.new(filename)
    song.name = name
    song.artist = Artist.new(artist)
    song.genre = genre
  end
end