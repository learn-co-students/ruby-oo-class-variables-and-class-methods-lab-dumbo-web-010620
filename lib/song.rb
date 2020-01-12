class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)

        @name = name 
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre 
        @@artists << artist  

    end 

    def self.count #return total num of songs
        @@count 
    end 

    def self.genres #return arr of all genres, no repeats
        @@genres.uniq
    end 

    def self.artists #return arr of all artist, no repeats
        @@artists.uniq 
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
    end 

    def self.artist_count #return hash w/ artistname as key & amount as value
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end 
        end 
        artist_count
    end 


end 