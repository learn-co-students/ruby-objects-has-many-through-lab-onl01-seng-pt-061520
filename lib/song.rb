class Song 
  
  @@all = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name 
    @artist = Artist.new(artist)
    @genre = Genre.new(genre)
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def genre 
    @genre.name 
  end 
  
  def artist
    @artist.name 
  end 
end 