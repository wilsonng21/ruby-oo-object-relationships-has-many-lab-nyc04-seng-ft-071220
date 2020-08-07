require 'pry'

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs 
        Song.all.select { |song| song.artist == self }
    end

    def add_song(song)
        song.artist = self
        song 
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
        # binding.pry
    end

    def self.song_count 
        Song.all.size
    end
end


