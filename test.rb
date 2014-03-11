require_relative 'Scroll.rb'

def makeScroll(type, number, level)
  new_scroll = Scroll.new("Arcane",3,2)
  new_scroll.print_scroll_information
end


def makeRandomScroll()
  new_scroll = Scroll.new
  new_scroll.random_scroll
  new_scroll.print_scroll_information
end

makeScroll("Arcane", 1, 1)
puts "\n"
makeScroll("Divine", 2, 1)
puts "\n"
makeRandomScroll
