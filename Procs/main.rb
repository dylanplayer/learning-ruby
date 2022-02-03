
greetings = Proc.new { |name| "Hello, #{name}" }

names = ['John', 'Jane']

names.each do |name|
  puts greetings.(name)
end

even = proc { | number | number % 2 == 0 } 
puts (1..5).map(&even)

triple = proc { | number | number * 3 }
puts (1..5).map(&triple)

hi_name = proc { | name | puts "Hi, #{name}" }
hi_name.call("Dylan")


