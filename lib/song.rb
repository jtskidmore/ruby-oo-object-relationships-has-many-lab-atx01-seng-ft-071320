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
    if self.artist.name
      self.artist.name
      binding.pry
    elsif self.artist.name == nil

      nil
    end
  end

end
