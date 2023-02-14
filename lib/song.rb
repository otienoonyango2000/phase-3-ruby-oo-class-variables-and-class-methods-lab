class Song
    attr_accessor :name, :artist, :genre
    

    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        
    end    

    def self.count
        @@count
      end    

    def self.artists=(artists)
        @@artists = artists
    end    

    def self.artists
        @@artists
    end    

    


end
song = Song.new("99 Problems", "Jay-Z", "rap")
puts song.name
puts song.artist
puts song.genre
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
puts Song.count
Song.artists = 'Brittany Spears'
p Song.artists