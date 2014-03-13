class Weapons
  @@randomWeapones = {"01-45"=>"Table", "5-12:"=>"Simple Weapons", "46-80"=>"Table", "5-13:"=>"Martial Weapons", "100"=>"Table", "5-14:"=>"Exotic Weapons"}
  def get_reandom_wepaons
    weapon_roll = rand(1..100)
    weapon = randomWeapones[weapon_roll]
    puts weapon.to_s
  end
  
  get_reandom_wepaons
  
end
