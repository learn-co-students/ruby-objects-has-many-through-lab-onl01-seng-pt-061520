class Genre
  
  attr_accessor :name, :songs, :artists
  @@all = []
  
  def initialize(name)
  @name = name 
  @songs = songs
  @artists = artists
  save 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select { |song| song.genre == self}
  end 
  
  def artists 
    Song.all.map { |song| song.artist}
  end 
end 