require_relative "Cat.rb"

class Lion < Cat
  def initialize(name, age, is_alive=true)
    super(name, 'Lion', age, is_alive)
  end

  def meow
    puts "#{@name} the #{@breed} says, \"RAWR\""
  end
end