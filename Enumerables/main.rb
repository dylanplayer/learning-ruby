items = ["Potion", "Pokeball", "Masterball", "Full Restore", "Ultraball", "Revive", "Rare Candy", "Focus Sash"]
items.each do | item |
  puts item
end

numbers = [1, 2, 3, 4, 5]
puts numbers.join(" ")
numbers.map! { | n | n * n }
puts numbers.join(" ")

numbers = [1, 2, 3, 4, 5]
puts numbers.join(" ")
puts numbers.inject(&:*)

puts [true, true, true].inject(&:&)

provinces = ["Toronto", "Ottawa", "Kingston", "Hamilton", "Paris", "Port Elgin", "Muskoka", "Niagara Falls"]
provinces.each do | province |
  puts province + ", Ontario "
end
