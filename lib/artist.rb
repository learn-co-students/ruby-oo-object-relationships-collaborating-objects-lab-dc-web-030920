require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end
    
    def self.find_or_create_by_name(artist)
        decider = self.all.select{|artist_instance| artist_instance.name == artist }
        #binding.pry
        if decider != []
            return decider[0]
        else
            artist_instance1 = Artist.new(artist)
            return artist_instance1
        end
    end

    def print_songs

        self.songs.each{|song|puts "#{song.name}\n"}
    end

end