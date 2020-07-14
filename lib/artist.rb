class Artist
  attr_accessor :name
  @@counter = 0
  
  def initialize(name)
    @name = name
  end
  
  def songs
       Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
    @@counter += 1
  end
  
  def add_song_by_name(name)
    song1 = Song.new(name)
    add_song(song1)
    @@counter += 1
  end
  
  def self.song_count
    @@counter
    
  end


end