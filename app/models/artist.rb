class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs
  end
  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    get_first_song[0].genre
  end

  def song_count
    #return the number of songs associated with the artist
    count = 0
    get_first_song.each do |song|
      count += 1
    end
    count
  end

  def genre_count
    #return the number of genres associated with the artist
    count = 0
    self.genres.each do |genres|
      count += 1
    end
    count
  end
end
