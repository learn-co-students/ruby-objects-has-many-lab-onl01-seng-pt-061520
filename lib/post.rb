class Post 
  attr_accessor :title, :author 
  @@all=[]
  
  def initialize(title, author=nil)
    @title=title  
    @author=author
    @@all << self 
  end 
  
  def author_name
    if author
      return self.author.name 
    else
      return nil 
    end 
  end 
  
  def self.all 
    @@all
  end 
  

  
end 
  
  
  
    
  
    