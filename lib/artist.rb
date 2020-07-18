require 'pry'
class Artist
    attr_accessor :name, :songs

    @@all = []
    def initialize(name)
        @name = name
        @songs = songs
        save
    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select{|songs| songs.artist == self}
    end

    def new_song(name, genre)
        # song = Song.new(name, genre)
        # song.artist = self
        # if name && genre 
        #     @songs << song
        #     song.artist = self
        # end
    end

end