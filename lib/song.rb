require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    # binding.pry
    artist.name if artist #did not know this existed
  end
end