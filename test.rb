require_relative 'Scroll.rb'

def makeScroll(type, numebr, level)
  new_scroll = Scroll.new(type,numebr,level)
  new_scroll.print_scroll_information
end

makeScroll("Arcane", 1, 1)
makeScroll("Divine", 2, 1)
