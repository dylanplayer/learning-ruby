class Denomination
  def initialize(name, value)
    @name = name
    @value = value.to_f
  end

  def get_name
    return @name
  end

  def get_value
    return @value
  end
end
