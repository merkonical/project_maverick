class ProjectMaverick::Scraper
  
  def get_page
    Nokogiri::HTML(open(""))
  end 
  
  def scrape_dpschart_index
    self.get_page.css("")
  end 
  
  def make_dpschart
    scrape_dpschart_index.each do |d|
      ProjectMaverick::WowDps.new_from_index(d)
    end 
  end

end 