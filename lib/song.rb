require 'pry' 

class Song

    attr_accessor :artist, :name
   # attr_reader :song_name 

    @@all = []

    def initialize(song_name, artist = nil)
        @name = song_name
        @artist = artist 
        @@all << self 
    end 

    def self.all 
        @@all 

        #all_songs_instances = self.all.each do |songs| puts
    end 

    def self.new_by_filename(file)
        parsed_name = file.split(" - ") 
        song = parsed_name[1]
        artist = parsed_name[0]
        genre = parsed_name[2].split(".")[0]

        found_artist = Artist.all.find {|artist| artist.name == artist }
        if found_artist == nil 
            found_artist = Artist.new(artist)
        end 

       Song.new(song, found_artist)

    end 



    def artist_name=(artist_name)

        found_artist = Artist.all.find {|artist| artist.name == artist_name }
        if found_artist == nil 
            self.artist = Artist.new(artist_name)
        else 
            self.artist = found_artist 
        end 


    end 



end 