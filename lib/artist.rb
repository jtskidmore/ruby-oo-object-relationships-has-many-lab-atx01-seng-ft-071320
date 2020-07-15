require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      binding.pry
      song.artist == self
    end
  end

end
