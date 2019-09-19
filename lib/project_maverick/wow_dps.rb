class ProjectMaverick::WowDps
  attr_accessor :name

  @@all = []

  def self.new_from_index_page(d)
    self.new()
  end

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 
  
end 