
def get_name()
  print "Enter your name: "
  name = gets.chomp
  return name
end

def happy_birthday(name)
  2.times { puts "Happy birthday to you" }
  puts "Happy birthday, dear #{name}"
  puts "Happy birthday to you." 
end

name = get_name()
happy_birthday(name)
