class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir["#{@path}/*"].collect {|file| File.basename(file)}
  end
  
  def import
    @new_files.each do |filename|
      
    end
  end 
end