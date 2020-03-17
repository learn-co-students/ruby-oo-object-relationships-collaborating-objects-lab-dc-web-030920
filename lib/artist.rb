require 'pry'

class Artist

    attr_accessor :name, :artist_songs 

    @@all = [] 
    #@@songs = [] 

    def initialize(name)
        @name = name
        @@all << self 
        @artist_songs = [] 

    end 

    def self.all
        @@all 
        #return all unique artists, Mj is returning twice 
    end 
    
    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_to_add)

      song_to_add.artist = self 
        @artist_songs << song_to_add 
   
    end

    def self.find_or_create_by_name(name_string) 

        found_artist = self.all.find {|artist| artist.name == name_string}

        if found_artist == nil 
            Artist.new(name_string)
        else found_artist.name = name_string 
            found_artist 
        end 

        # This class method should take the name that is passed in (remember, it will be a string), 
        # and do one of two things. Find the artist instance that has that name or create 
        # one if it doesn't exist. Either way, the return value of the method will be an instance of 
        # an artist with the name attribute filled out.
    end 

    def print_songs 

        self.songs.each {|song| puts song.name   }

    end 





end 