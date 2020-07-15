require 'pry'

class Song

  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize (name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    Song.all.each do |song|
      if song.artist == self.artist
        song.artist.name
      end
    end
  end

end
