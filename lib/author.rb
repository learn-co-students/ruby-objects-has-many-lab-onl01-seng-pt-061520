class Author
  def initialize(name)
    @name = name
  end

  attr_accessor :name

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end

  def self.post_count
    Post.all.count
  end

end
