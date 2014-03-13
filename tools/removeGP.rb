#!/user/bin/env ruby

toclean = File.read('spells.txt')
toclean = toclean.gsub(/\\266/,"-")
cleaned = toclean.gsub(/\d{1},{0,1}\d{0,3}\s{1}gp/,"")
File.open('spells.txt', "w") {|clean| clean.puts cleaned}
