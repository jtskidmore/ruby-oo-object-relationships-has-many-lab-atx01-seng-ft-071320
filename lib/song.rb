

class Song

  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize (name, genre)
    @name = name
    @genre = genre
  end

  def self.all
    @@all
  end

  def name
    @name
  end

end
