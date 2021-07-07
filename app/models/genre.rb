class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
    # return the number of songs in a genre
  end

  def artist_count
    artist_arr = self.songs.map do |song|
      song.artist
    end
      artist_arr.length
    # return the number of artists associated with the genre
  end

  def all_artist_names
      artist_arr = self.songs.map {|song| song.artist}
      artist_arr.map {|artist| artist.name}
      # return an array of strings containing every musician's name
  end
end
