require 'pry'
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name,self,genre)
    end

    def genres
        genres = []
        songs.each do |song|
           genres << song.genre
        end
       genres
    end

end