require 'pry'

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
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    existing_artist = self.all.find {|artist| artist.name == name }
    #binding.pry
    if existing_artist.nil?
      self.create(name)
    else
      existing_artist
    end
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
  end


end
