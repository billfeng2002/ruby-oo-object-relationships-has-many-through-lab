
class Song
    @@all=[]
    def self.all
        @@all
    end

    attr_accessor :name, :artist, :genre
    def initialize(song_name, artist, genre)
        @name=song_name
        @artist=artist
        @genre=genre
        @@all << self
    end
end
