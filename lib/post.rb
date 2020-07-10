class Post
  def initialize(title)
    @title = title
    @@all << self
  end

  attr_accessor :title

  @@all = []

  def self.all
    @@all
  end

  def title
    @title
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def author_name
    if !self.author
    else self.author.name
    end
  end
end
