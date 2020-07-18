class Genre
    attr_accessor :name, :artist, :genre

    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @genre = genre
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

    def artists
        Artist.all.select{|artist| artist.songs = self}
    end

end