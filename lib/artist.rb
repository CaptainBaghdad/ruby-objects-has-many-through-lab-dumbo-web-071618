class Artist
attr_accessor :name, :genre, :songs 
@@all = []
def initialize(name)
  @name = name 
 @songs = []
 @@all  << self 

end 

 def songs
   @songs.select do |ele|
    ele.artist == self
   end 
 end 


 def self.all 
    @@all
 end 


 def new_song(name,genre)
    song = Song.new(name,self, genre)
    song.artist = self
   
   
    @songs << song
    song


 end 

 def genres
  self.songs.collect do |ele|
     ele.genre
  end 

 end 
 

end 


