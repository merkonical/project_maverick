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
    
    puts ""
    puts "What class specialization do you want DPS information on?"
    input = gets.strip
    
    class_spec_dps = ProjectMaverick::WowDps
    
    print_class_spec_dps(class_spec_dps)
    
    puts ""
    puts "Would you like to see another class specialization? Enter Y or N"
    
    input = gets.strip.downcase 
    if input == "y"
      start 
    elsif input == "n"
      puts ""
      puts "Ok, goodbye!"
      exit 
    else
      puts ""
      puts "That is not a choice."
      start 
    end 
  end 
  
  def print_class_spec_dps(class_spec_dps)
    puts ""
    puts "----------- #{class_spec_dps.name} - #{class_spec_dps.position} -----------"
    puts ""
    puts "Class specialization:      #{class_spec_dps.class_spec}"
    puts "Highest DPS:      #{class_spec_dps.best_dps}"
  end 
end 

























