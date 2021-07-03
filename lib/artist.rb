require 'pry'
class Artist

    attr_accessor :name
    # attr_reader :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_song(some_song)
        @songs << songs
        some_song.artist = self
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def self.find_or_create_by_name(name)
        self.all.detect {|artist| artist.name == name} || 
        Artist.new(name)
    end

    def print_songs
        self.songs.each {|song| puts song.name} 
    end 
end