class Genre
    attr_reader :name 
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
            song.genre == self
        end
    end

    def artists
        artists = []
        songs.each do |song|
           artists << song.artist
        end
       artists
    end
end
