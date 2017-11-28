class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def save
    @@all.push (self)
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

  end


end
