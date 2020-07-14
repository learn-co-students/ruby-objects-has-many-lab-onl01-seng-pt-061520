class Author
  
  @@postcount = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post1| 
      post1.author == self
    end
  end
  
  def add_post(post1)
    post1.author = self
    @@postcount += 1
  end
  
  def add_post_by_title(title)
    newpost = Post.new(title)
    add_post(newpost)
    @@postcount += 1
  end
  
  def self.post_count
    @@postcount
  end
  
end