
# class Song


#     attr_accessor :name, :artist
# @@all = []
#     def initialize (name)
#     @name = name
#     @artist = artist
#     @@all << self
#     end

#     def self.all 
#         @@all
#     end

#     def new_by_filename(new_song)
#         new_song = Song.new()

#     end
    # new_instance = Song.new_by_filename(file_name)
    # expect(new_instance.name).to eq('Black or White')

# end

# class Song
#     attr_accessor :name, :artist
#     #attr_reader :artist
#     @@all = []
#     def initialize (name) 
#         @name = name 
#         #@artist = artist
#         @@all << self
#     end

#     def self.all 
#         @@all 
#     end

#     def self.new_by_filename(filename)
#         name = filename.split(" - ")[1]
#         self.new(name)
#         binding.pry
#         #a = filename.split(" - ").delete_at(0)
#         #aaa = a + " - " + f
#         #artist, song = filename.split(" - ")
#         #new_song = self.new(song)
#         #new_song.artist_name = artist
#         #new_song
#       end

# end


class Song
    attr_accessor :name, :artist
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
  
    def self.new_by_filename(filename)
      artist, song = filename.split(" - ")
      new_song = self.new(song)
      new_song.artist_name = artist
      new_song
    end
  
    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end
  end









