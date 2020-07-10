class Song
  def initialize(name)
    @name = name
    @@all << self
  end

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    #belongs to an artist
    @artist
  end

  def artist_name
    #knows the name of its artist
    #returns nill if the song does not have an artist
    if !self.artist
    else self.artist.name
    end
  end
end
