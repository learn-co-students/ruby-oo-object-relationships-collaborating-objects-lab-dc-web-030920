require 'pry'

class MP3Importer

    attr_accessor :path, :files 

    @@path = [] 
    @@library = [] 
    @@files 

    def initialize(path)
        @path = path 
        @@path << self 

    end 


    def files 

        temp_files = []
      
        Dir.foreach(self.path) {|file| temp_files << file }
        temp_files.shift 
        temp_files.shift 
        temp_files 

    end


    def import
        
        files.each{ |filename| Song.new_by_filename(filename) }
      end


    # def import(file_name)

    #     list_of_filenames.each{ |filename| Song.new_by_filename(filename) }

    #     Song.new_by_filename(file_name)

    # end 

        
    # def files 
   
    # #   files =  Dir.chdir("./spec/fixtures/mp3s") { Dir.entries(".mp3") }


    # #    Dir.glob("*.mp3").each do |song| 
    # #             self.files << song 
       
    # #    Dir.chdir("/spec/fixtures/mp3s") do |song| 
    # #        self.files << song 

    # #     Dir.glob("*.mp3").each do |song| 
    # #        self.files << song 
        
     
     

    # #     MP3Importer.path 

    # #    Song.new_by_filename(some_filename)

    # #     loads all the mp3 files in the path directory (FAILED - 7)
    # #     normalizes the filename to just the mp3 filename with no path (FAILED - 8)

    # end 

    # def import 

    # end 


    # # def self.create_from_filename(filename)

    # #     split_file = filename.split(" - ")
    # #     second_split = split_file[1].split(".")
    
    # #     song = self.create 
    # #     song.name = second_split[0]
    # #     song.artist_name = split_file[0]
    # #     song
    
    # # end 







end 