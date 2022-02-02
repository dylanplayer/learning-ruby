class Animal
  def initialize(type, legs, age, is_alive)
    @type = type
    @legs = legs
    @age = age
    @is_alive = is_alive
  end

  def get_type
    return @type
  end

  def get_legs
    return @legs
  end

  def age
    return @age
  end

  def is_alive
    return @is_alive
  end
end
