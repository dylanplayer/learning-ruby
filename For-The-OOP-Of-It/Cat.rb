require_relative "Animal.rb"

class Cat < Animal
  def initialize(name, breed, age, is_alive = true)
    super('Cat', 4, age, is_alive)
    @name = name
    @breed = breed
  end

  def get_name
    return @name
  end

  def get_breed
    return @breed
  end

  def meow
    puts "#{@name} the #{@breed} says, \"MEOW\""
  end
end