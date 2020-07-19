def Artist
  attr_accessor :name, :songs, :genres

  @@all = []

def initialize(name)
  @name = name
  @songs = []
  @genres = []
  @@all << self
end

def self.all
  @@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

def genres
  Song.all.map {|song| song.genre}
end


end
