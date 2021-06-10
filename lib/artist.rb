
class Artist
    @@all=[]
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
    end

    def new_song(song_name, song_genre)
        Song.new(song_name,self, song_genre)
    end

    def songs
        Song.all.select{|song| song.artist==self}
    end

    def genres
        self.songs.map{|song| song.genre}
    end
end
