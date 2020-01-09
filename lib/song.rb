class Song
    attr_accessor :name, :artist, :genre, :count   
        @@artists = [] 
        @@genres = [] 
        @@count = 0
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@artists << artist 
        @@genres << genre 
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
        num_of_genres = {} 
        @@genres.each do |each_genre|
            if num_of_genres[each_genre]
               num_of_genres[each_genre] += 1 
             else
               num_of_genres[each_genre] = 1
            end
        end
          num_of_genres
    end

    def self.artist_count 
        num_of_artists = {}
        @@artists.each do |each_artist|
            if num_of_artists[each_artist]
                num_of_artists[each_artist] += 1 
            else 
                num_of_artists[each_artist] = 1 
            end
        end  
        num_of_artists
    end 
    
end 