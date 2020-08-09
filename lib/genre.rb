class Genre

  attr_reader :name

  @@all_g = []

  def initialize(name)
    @name = name
    @@all_g << self
  end

  def songs
    Song.all.select {|s| s.genre == self}
  end

  def self.all
    @@all_g
  end

  def artists
    artists = []
    Song.all.select {|s| artists << s.artist if s.genre == self}
    artists
  end
end
