class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    histogram = {}
    @@genres.map do |genre|
      if histogram.has_key?(genre)
        histogram[genre] += 1
      else
        histogram[genre] = 1
      end
    end
      histogram
  end

  def self.artist_count
    histogram = {}
    @@artists.map do |artist|
      if histogram.has_key?(artist)
        histogram[artist] += 1
      else
        histogram[artist] = 1
      end
    end
    histogram
  end

end
