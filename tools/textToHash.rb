#!/user/bun/env ruby

# puts "Enter filename to convert: "
# filename = gets.chomp
# contents = File.read(filename)

contents = File.read('weapons.txt')
items = {}
current_key = nil
contents.strip.gsub(/\u2028/," ").split(' ').each do |item|
  
  if item[0] =~ /[[:digit:]]/
    current_key = item.split('-').map{|d| Integer(d)}
    current_key = current_key[0]..current_key[1]

  else
    if items.has_key?(current_key)

      items[current_key] = items[current_key] + " " +item
    else
      items[current_key] = item

    end
  end
end
puts items

