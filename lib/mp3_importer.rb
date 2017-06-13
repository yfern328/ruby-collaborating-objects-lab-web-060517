class MP3Importer

  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = []
    self.files
    self.import
  end

  def files
    @files = Dir.entries(@path).select {|file| !File.directory? file}
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end

end
