class Author 
  attr_accessor :name 
  
  def initialize (name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
      # binding.pry
  end
  
  def add_post(posts)
    posts.author = self
  end
  
  def add_post_by_title(post_title)
    posts = Post.new(post_title)
    add_post(posts) #associates a post with an author
  end
  
  def self.post_count
    Post.all.count
  end
end