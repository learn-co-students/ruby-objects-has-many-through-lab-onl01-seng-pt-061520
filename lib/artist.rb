class Artist
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        # lists each artist in class
        @@all
    end

    def songs
        # returns all songs associated with Artist
        Song.all.select {|song| song.artist == self}
    end
    
    def new_song(name, genre)
        # song knows that it belongs to the artist
        Song.new(name, self, genre)
    end
    
    def genres
        # has many genres through songs
        Song.all.collect {|song| song.genre}
    end

end