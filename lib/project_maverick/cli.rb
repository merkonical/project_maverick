class ProjectMaverick::CLI
  
  def call  
    ProjectMaverick::Scraper.new.make_dpschart
    puts "Welcome to World of Warcraft DPS Rankings"
    start 
  end 
  
end 