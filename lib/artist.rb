require 'pry'
class Artist 
  attr_accessor :name, :songs
 
  def initialize(name) 
    @name = name
  end
  
  
  def songs
    Song.all.select {|song| song.artist == self}
      # binding.pry
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name (song_name)
    # binding.pry
    singer = Song.new(song_name)
    add_song(singer)
  end
  
  def self.song_count
    # binding.pry
    Song.all.count
  end
end

