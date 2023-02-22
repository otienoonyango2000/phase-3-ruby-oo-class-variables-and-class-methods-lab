class Song
    attr_accessor :name, :artist, :genre
    

    @@count = 0
    @@songs = []
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        
        @@artists.push(artist)
        @@genres.push(genre)
        @@count += 1

        self.name = name
        self.artist = artist
        self.genre = genre
        
    end    

    def self.count 
        @@count
    end
    def self.artists
        @@artists.uniq
      end
    
      def self.genres
        @@genres.uniq
      end
    
      def self.genre_count
        histogram = Hash.new
        Song.genres.each do |genre|
          histogram["#{genre}"] = @@genres.filter { |g| g == genre }.size
        end
        histogram
      end
    
      def self.artist_count
        histogram = Hash.new
        Song.artists.each do |artist|
          histogram["#{artist}"] = @@artists.filter { |art| art == artist }.size
        end
        histogram
      end

    


end
Song.new("99 Problems", "Jay-Z", "rap")
puts Song.name
puts Song.artists
puts Song.genres
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
puts Song.count
