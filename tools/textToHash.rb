#!/user/bun/env ruby

# puts "Enter filename to convert: "
# filename = gets.chomp
# contents = File.read(filename)

contents = File.read('weapons.txt')
items = {}
current_key = nil
contents.strip.gsub(/\u2028/," ").spilt(' ').each do |item|
  
  if item[0] =~ /[[:digit;]]/
    current_key = item.gsub(/\-/,"..")
  else
    if item.has_key?(current_key)
      items[current_key] = items[current_key] + " " + item
    else
      itmes[current_key] = item
    end
  end
end
puts items

