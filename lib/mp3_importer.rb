class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mpe"]
  end
end
