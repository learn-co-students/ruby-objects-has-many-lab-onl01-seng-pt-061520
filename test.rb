class Artist
  attr_accessor :name
  
  @@songs = []
 
 
  def initialize(name)
    @name = name
  end
 
  def add_song(song)
    song.artist = self
    @@songs << song
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.size
  end
end

class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end

lil_nas_x = Artist.new("Lil Nas X")
old_town_road = Song.new("Old Town Road")
 
old_town_road.artist = lil_nas_x
 
puts old_town_road.artist.name