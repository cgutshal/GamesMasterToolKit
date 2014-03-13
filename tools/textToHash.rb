#!/usr/bin/env ruby                                                                                                                                                                      
# puts "Enter filename to convert: "
# filename = gets.chomp                                                                                                                        
# contents = File.read(filename)                                                                                                            

contents = File.read('weapons.txt')
items = {}                                                                                                                                                                               
current_key = nil                                                                                                                                                                        
contents.strip.gsub(/\u2028/," ").split(' ').each do |item|                                                                                    

  if item[0] =~ /[[:digit:]]/                                                                                                                                                            
    current_key = item.gsub(/\-/,"..").gsub(/"/,"")                                                                                                                                                                   
  else                                                                                                                                                                                   
    if items.has_key?(current_key)                                                                                                                                                       
      items[current_key] = items[current_key] + " " + item                                                                                                                               
    else                                                                                                                                                                                 
      items[current_key] = item                                                                                                                                                          
    end                                                                                                                                                                                  
  end                                                                                                                                                                                    
end                                                                                                                                                                                      
                                                                                                                                                                                         
puts items 
