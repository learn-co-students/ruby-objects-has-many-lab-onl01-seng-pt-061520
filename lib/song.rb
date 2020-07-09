class Song
attr_accessor :name, :artist #belongs to an artist
@@all=[] #is a class variable set to an array

#is initialized with an argument of a name
#pushes new instances into a class variable 
#called @@all upon initialization

def initialize (name)
    @name = name #has a name
    save
end

def save
    @@all << self
end

#is a class method that returns an array of all song
#instances that have been created

def self.all
    @@all
end

#knows the name of its artist
#returns nil if the song does not have an artist

def artist_name
   if !@artist
    else
        @artist.name
        end
end

end