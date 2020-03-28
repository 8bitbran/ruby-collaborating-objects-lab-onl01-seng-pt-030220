class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir["#{@path}/*"].collect {|file| File.basename(file)}
  end
  
  def import
    files.
  end 
end