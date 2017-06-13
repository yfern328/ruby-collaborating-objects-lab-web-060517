class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    filename_arr = filename.split(" - ")
    song = Song.new(filename_arr[1])
    song.artist = Artist.find_or_create_by_name(filename_arr[0])
    song.artist.songs << song
    song
  end

  def self.all
    @@all
  end

end
