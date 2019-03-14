class Song 
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count 
  
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
    new hash = {}
    @@genres.map do |genre|
      new hash[genre] = "hi"
    end
    new hash
  end 
end   