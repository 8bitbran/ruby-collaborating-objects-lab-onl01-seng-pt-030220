class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    @@new_files
  end
  
  def import
    new_files.each do |file|
      Song.new_by_filename(file)
    end
  end 
end