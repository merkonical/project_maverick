class ProjectMaverick::Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.noxxic.com/wow/dps-rankings/"))
  end 
  
  def scrape_dpschart_index
    self.get_page.css("ul.wow-rankings")
    
  end 
  
  def make_dpschart
    scrape_dpschart_index.each do |d|
      ProjectMaverick::WowDps.new_from_index_page(d)
    end 
  end

end 