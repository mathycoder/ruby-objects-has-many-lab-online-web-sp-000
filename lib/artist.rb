class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end
  
  def self.song_count 
    counter = 0 
    @@all.each {|artist| counter += artist.songs.length}
    counter 
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song 
  end 
  
  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self 
    @songs << new_song
  end 
end 