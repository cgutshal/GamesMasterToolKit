class Scroll
  def initialize(spell_type = "", number_of_spells = 0, scroll_level = 0)
    @spell_type = spell_type
    @number_of_spells = number_of_spells
    @scroll_level = scroll_level
  end  
  
  def random_scroll()
    random_type
    random_number_of_spells
    scroll_level = rand(1..9)
  end
  
  def random_type()
    type_roll = rand(1..100)
    if type_roll <= 70 
      @spell_type = "Arcane"
    else
      @spell_type = "Divine"
    end
  end
  
  def random_number_of_spells()
    number_roll = rand(1..100)
    if (number_roll <= 70) 
      @number_of_spells = 1
    elsif number_roll >= 81 and number_roll < 96 
      @number_of_spells = 2
    elsif (number_roll >= 96)
      @number_of_spells = 3
    end
  end
  
  def print_scroll_information()
    puts "This is a " + @spell_type.to_s + " Scroll."
    puts "It is a Level " + @scroll_level.to_s + " Scroll."
    if @number_of_spells == 1
      plural = " spell."
    else
      plural = " spells."
    end     
    puts "The scroll has " + @number_of_spells.to_s + plural
  end
end


