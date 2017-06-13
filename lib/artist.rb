class Artist

  attr_accessor :name, :songs, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)

    artist_list = @@all.map {|artist| artist.name}

    if artist_list.include?(artist_name)
      @@all.find {|artist| artist.name == artist_name}
    else
      new_artist = Artist.new(artist_name)
    end

  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
