class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end


    def artist_name=(name)
        test = Artist.find_or_create_by_name(name)
        self.artist = test
    end

    def self.new_by_filename(file_name)
        info = file_name.split(" -")
        song = Song.new(info[1].strip)
        song.artist = Artist.new(info[0].strip)
        song

    end




end