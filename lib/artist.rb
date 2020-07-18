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
        # name = Song.name
        # genre = Song.genre

        # Song.new(name, genre)
        # Artist.song = name && genre
        song.artist = self
    end

end