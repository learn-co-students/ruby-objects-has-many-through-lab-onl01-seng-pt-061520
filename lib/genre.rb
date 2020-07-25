class Genre

    attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

    def self.all
    # lists genres in class
		@@all
	end

    def songs
    # iterates through all songs;
    # finds the songs that belongs to the genre
		Song.all.select {|song| song.genre}
	end

    def artists
    # iterates over the genre's collection of songs;
    # collects/maps the artist that owns each song
		Song.all.collect {|song| song.artist}
    end
    
end