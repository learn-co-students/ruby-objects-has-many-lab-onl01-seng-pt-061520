require 'pry'

class Artist 

  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
 end