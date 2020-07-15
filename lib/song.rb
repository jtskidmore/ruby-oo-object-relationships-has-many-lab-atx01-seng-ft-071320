

class Song

  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize (name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

end
