class Artist
  attr_accessor :name
  attr_accessor :albums

  def initialize name
    @name = name
    @albums = []
  end

  def add_album album
    albums << album
  end
end

class Album
  attr_accessor :album_name
  attr_accessor :songs
  def initialize album_name
    @album_name = album_name
    @songs = []
  end

  def add_song song
    songs << song
  end
end

class Song
  attr_accessor :name
  attr_accessor :duration
  def initialize name, duration
    @name = name
    @duration = duration
  end
end

#create 2 albums for artist
artist = Artist.new 'Lil Skies'
album1 = Album.new 'Alone'
album2 = Album.new 'Life of a dark rose'

#add album for artist
artist.add_album album1
artist.add_album album2

#songs for 1 album
song1 = Song.new 'Lust', 3
song2 = Song.new 'Nowadays', 2
song3 = Song.new 'Red roses', 4

#add songs in 1 album
album1.add_song song1
album1.add_song song2
album1.add_song song3

#songs for 2 album
song4 = Song.new 'Pop star', 5
song5 = Song.new 'Grave', 3
song6 = Song.new 'Now', 3

#add songs in 2 album
album2.add_song song4
album2.add_song song5
album2.add_song song6

puts "Artist: #{artist.name}"
artist.albums.each do |album|
  puts "- Album: #{album.album_name}"
  puts "Songs:"
  album.songs.each do |song|
    puts "--- #{song.name}: #{song.duration}"
  end
end
