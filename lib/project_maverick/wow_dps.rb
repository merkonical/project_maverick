class ProjectMaverick::WowDps
  attr_accessor :name, :position, :url, :class_spec, :best_dps, :value 

  @@all = []

  def self.new_from_index_page(d)
    self.new(
       r.css("pos").text,
      "https://www.noxxic.com/wow/dps-rankings/#{r.css("a").attribute("href").text}",
      r.css("val").text,
      )
  end

  def initialize(name=nil, url=nil, position=nil)
    @name = name
    @url = url
    @position = position 
    @@all << self
  end

  def self.all
    @@all
  end 
  
  def self.find(id)
    self.all[id-1] 
  end 
  
  def best_dps
    @best_dps ||= doc.xpath("/html/body/div[3]/div[2]/div[2]/ul/li[2]/span[1]").text 
  end 
  
  def class_spec
    @class_spec ||= doc.xpath("/html/body/div[3]/div[2]/div[2]/ul/li[1]/span[1]/a[1]").text 
  end 
  
  def value 
    @value ||= doc.xpath("/html/body/div[3]/div[2]/div[2]/ul/li[1]/span[1]/span[3]").text 
  end
  
  def doc 
    @doc ||= Nokogiri::HTML(open(self.url))
  end 
end 





























