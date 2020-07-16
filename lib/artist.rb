require 'pry'

class Artist 
    attr_accessor :name 
    def initialize(name)
        @name = name 
    end 

    def songs 
        Song.all.select do |song|
           #binding.pry
            song.artist == self
        end 
    end 

    def add_song(song)
         #binding.pry
        song.artist = self 
    end 

    def add_song_by_name(song_name)
        #binding.pry
      artist = Song.new(song_name)
      add_song(artist)
    end  

    def self.song_count
        #binding.pry
        Song.all.count
    end 
end 
