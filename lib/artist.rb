require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    Song.all.select do |song|
      binding.pry
      song == Song.all
    end
  end

  def songs
    @songs
    
  end

end
