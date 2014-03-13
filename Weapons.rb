
random_weapons = {1..45=>"Simple Weapons", 46..80=>"Martial Weapons", 81..100=>"Exotic Weapons"}
weapon_roll = rand(1..100)
weapon = random_weapons[weapon_roll]
puts weapon

