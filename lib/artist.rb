require 'pry'

class Artist

  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def add_song(song)
    Song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

end
