require "pry"
class Song
    attr_accessor :name, :filename, :artist, :genre

    @@all = []

    def initialize(name)
        #@filename = filename.[0//-5].split(' - ')
        @name = name
        # @name = filename[1]
        # @artist = filename[0]
        # @genre = filename[2]
        # save
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all = []
    end

    def save
        @@all << self
    end

    def self.create(name)
        Song.new(name).save
        # binding.pry
        return @@all[-1]
    end
        




end