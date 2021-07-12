class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre


  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  #def song_title

  def genre_id
    self.genre ? self.genre.id : nil
  end

  




end
