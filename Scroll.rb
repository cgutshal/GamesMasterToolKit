class Scroll
  @@level_one_spells = {1..6 => "Acid Splash", 7..10 => "Arcane Mark", 11..13 => "Bleed",  14..18 => "DancingLights", 19..23 => "Daze", 24..30 => "Detect Magic", 31..37 => "Detect Poison", 38..44 => "Disrupt Undead", 45..48 => "Flare", 49..52 => "Ghost Sound", 53..58 => "Light", 59..62 => "Mage Hand", 63..68 => "Mending", 69..76 => "Message", 77..79 => "Open/Close", 80..82 => "Prestidigitation", 83..88 => "Ray of Frost", 89..91 => "Read Magic", 92..95 => 'Resistance',96..100 => "Touch of Fatigue" }
  
  def initialize(spell_type = "", number_of_spells = 0, scroll_level = 0, caster_level = 0, scroll_vaule='')
    @spell_type = spell_type
    @number_of_spells = number_of_spells
    @scroll_level = scroll_level
    @caster_level = caster_level
    @scroll_vaule = scroll_vaule
  end  

  def get_scroll_value
    scroll_vaule = @scroll_vaule
    return scroll_vaule.to_i
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

  def random_scroll_vaule()
    vaule_roll = rand(1..3)
    if vaule_roll == 1
      @scroll_vaule = "Minor"
    elsif vaule_roll == 2
      @scroll_vaule = "Medium"
    else 
      @scroll_vaule = "Major"
    end
  end
  
  def random_scroll_level(get_scroll_value)
    level_roll = rand(1..100)
    if @scroll_vaule == "Minor"
      case level_roll
      when 1..5
        @scroll_level = 0
        @caster_level = 1
      when 6..50
        @scroll_level = 1
        @caster_level = 1 
      when 51..95
        @scroll_level = 2
        @caster_level = 3 
      when 96..100
        @scroll_level = 3
        @caster_level = 5 
      end
    elsif @scroll_vaule == "Medium"
      case level_roll 
      when 1..5
        @scroll_level = 2
        @caster_level = 3
      when 6..65
        @scroll_level = 3
        @caster_level = 5
      when 66..95
        @scroll_level = 4
        @caster_level = 7
      when 95..100
        @scroll_level = 5
        @caster_level = 9
      end
    else
      case level_roll
      when 1..5
        @scroll_level = 4
        @caster_level = 7
      when 6..50
        @scroll_level = 5
        @caster_level = 9
      when 51..70
        @scroll_level = 6
        @caster_level = 11
      when 71..85
        @scroll_level = 7
        @caster_level = 13
      when 86..95
        @scroll_level = 8
        @caster_level = 15
      when 96..100
        @scroll_level = 9
        @caster_level = 17
      end
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


