

class Post

  @@all = []

  def initialize (title)
    @title = title
  end

  def self.all
    @@all
  end

end
