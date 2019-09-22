class ProjectMaverick::CLI 
  
  def call
    list_shoes
    menu
    goodbye
  end

  def list_shoes
    puts "Newest Nike Shoes:"
    @shoes = ProjectMaverick::Nikeshoes.today
    @shoes.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.name} - #{shoe.price} "
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the shoe you'd like to see the price on or type list to see the shoes again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_shoe = @shoes[input.to_i-1]
        puts "#{the_shoe.name} - #{the_shoe.price}"
      elsif input == "list"
        list_shoes
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you come again!"
  end
end 