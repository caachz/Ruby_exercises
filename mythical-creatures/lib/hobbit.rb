class Hobbit

  attr_reader :name, :disposition, :age, :height

  def initialize(name, disposition = "homebody", age = 0, height = 32)
    @name = name
    @disposition = disposition
    @age = age
    @height = height
  end

  def celebrate_birthday
    @age = @age + 1
    return @age
  end

  def adult?
    if @age >= 33
      return true
    else
      return false
    end
  end

  def old?
    if @age >= 100
      return true
    else
      return false
    end
  end

  def has_ring?
    if @name == "Frodo"
      return true
    else
      return false
    end
  end

  def is_short?
    if @height > 30
      return true
    else
      return false
    end
  end
end
