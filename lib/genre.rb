class Genre
    attr_accessor :name, :artist, :genres

    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @genres = genres
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end 

    def songs
        Song.all.select{|songs| songs.genre == self}
    end

    def artists
        Artist.all.select{|artist| artist.songs = self}
    end

end