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

    # def new_song(name, genres)
    #     song = Song.new(name, self, genres)
    #     self.songs.last
    # end


  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.map(&:genre)
  end
end