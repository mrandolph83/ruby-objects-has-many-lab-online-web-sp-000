require 'pry'
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  # Artist class initializes with a name
  end

  def songs
  # Calls on the song class. iterates through all
  # and links the songs within that class to be
  # tied to an Artist
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
  # When you add a song, it is tied to the artist
  # initialized.
    song.artist = self
  end

  def add_song_by_name(song_name)
  
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    Song.all.count
  end
end
