class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    @new_files = Dir["#{@path}/*"].collect {|file| File.basename(file)}
    @new_files
  end
  
  def import
      @new_files.split(" - ")[2] = artist_name
      Artist.find_or_create_by_name(artist_name)
      filename.split(" - ")[1] = song
      Artist.add_song(song)
  end 
end