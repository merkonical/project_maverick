class ProjectMaverick::CLI
  
  def call  
    ProjectMaverick::Scraper.new.make_dpschart
    puts "Welcome to World of Warcraft DPS Rankings"
    start 
  end 
  
  def start 
    puts ""
    puts "What rank number do you want to see? 1-24?"
    input = gets.strip.to_i
    
    print_dpschart(input)
    
    
  end 
  
end 