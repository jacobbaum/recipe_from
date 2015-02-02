class Source
  attr_accessor :id, :name, :description, :image

  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @description = args[:description]
    @image = args[:image]
  end
  
  def to_s
    "#{@name}"
  end  

end    