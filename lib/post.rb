

class Post

  @@all = []

  def initialize (title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def title
    @title
  end

end
