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
    new_hash = {}
    @@genres.map do |genre|
      new_hash[genre] = @@genres.count(genre)
    end
    new_hash
  end 
  def self.artist_count 
    new_hash = {}
    @@artists.map do |artist|
      new_hash[artist] = @@artists.count(artist)
    end
    new_hash
  end 
end   