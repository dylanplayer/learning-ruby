
def get_height()
  print "Enter height: "
  height = Integer gets.chomp
  return height
end 

def draw_top(height)
  height.times do | i |
    (height - i).times do | j |
      print " "
    end  
    i.times do | j |
      print "^ "
    end
    puts
  end
end

def draw_bottom(height)
  height.downto(1) do | i |
    (height - i).times do | j |
      print " "
    end  
    i.times do | j |
      print "^ "
    end
    puts
  end
end

def draw(height)
  draw_top height
  draw_bottom height
end  

height = get_height()
draw height
