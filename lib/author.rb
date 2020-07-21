class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name =name 
  end 
  
  def add_post_by_title(title)
    blog = Post.new(title)
    add_post(blog)
  end 
  
  def add_post(posts)
    posts.author=self 
  end 
  
  def posts 
    the_list = Post.all
    the_list.select {|posts| posts.author == self }
  end 
  
  def self.post_count
    @@song_author_list =[]
    the_list = Post.all
    the_list.each {|posts| @@song_author_list << posts.artist }
    lets_count = @@song_author_list
    lets_count.count 
  end 
end 

