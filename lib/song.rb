class Song 
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
  
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
    @@artists.uniq!
  end  
  def self.genres
    @@genres.uniq!
  end  
  def self.genre_count
    @@genres.map do |genre|
      @@genre_count[genre] ||= genre.count
    end
  end 
end   