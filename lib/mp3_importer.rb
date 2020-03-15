
class MP3Importer
    attr_reader :path
    def initialize(path)
        @path = path
    end

    def self.find_or_create_by_name(artist)
        decider = Artist.all.select{|artist_instance| artist_instance.name == artist }
        if decider
            return decider
        else
            artist_instance1 = Artist.new(artist)
        end
    end

    def files
        Dir.children(path)
    end

    def import
        info = self.files
        info.each {|file| Song.new_by_filename(file)}
    end
end