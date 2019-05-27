class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    count = 0
    self.songs.each do |songs|
      count +=1
    end
    count
  end

  def artist_count
    # return the number of artists associated with the genre
    count = 0
    self.artists.each do |artist|
      count +=1
    end
    count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map do |artist|
      artist.name
    end
  end
end
