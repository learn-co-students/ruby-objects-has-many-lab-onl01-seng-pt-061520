class Artist 
  attr_accessor :name 
  
 # @@all_artist = []
  
  def initialize(name)
    @name =name 
    #@@all_artist << name 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end 
  
  def add_song(song)
    song.artist=self 
  end 
  
  def songs 
    the_list = Song.all
    the_list.select {|song| song.artist == self }
  end 
  
  def self.song_count
    @@song_artist_list =[]
    the_list = Song.all
    the_list.each {|song| @@song_artist_list << song.artist }
    lets_count = @@song_artist_list.uniq
    lets_count.count 
  end 
end 


  
  