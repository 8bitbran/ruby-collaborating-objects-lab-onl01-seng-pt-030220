class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    new_files = Dir["#{@path}/*"].collect {|file| File.basename(file)}
    new_files
  end
  
  def import(new_files)
    new_files.each do |file|
      Song.new_
  end 
end