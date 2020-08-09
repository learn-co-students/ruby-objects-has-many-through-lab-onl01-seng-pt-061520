class Song

  attr_accessor :artist
  attr_reader :title, :genre

  @@all_s = []

    def initialize(title, artist, genre)
      @title = title
      @artist = artist
      @genre = genre
      @@all_s << self
    end

    def self.all
      @@all_s
    end
end
