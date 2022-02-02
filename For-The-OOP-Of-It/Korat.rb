require_relative "Cat.rb"

class Korat < Cat
  def initialize(name, age, is_alive=true)
    super(name, 'Korat', age, is_alive)
  end
end