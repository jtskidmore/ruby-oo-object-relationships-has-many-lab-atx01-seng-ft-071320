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
      song.artist == self
    end
  end

  def add_song_by_name (name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def song_count
    counter = 0
    Song.all.each do |song|
      if song.artist == self.artist
        counter += 1
      end
    end
    counter
  end

end
