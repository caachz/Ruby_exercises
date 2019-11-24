class Dragon

  attr_reader :name, :color, :rider, :hunger, :hunger_level

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = hunger
    @hunger_level = 0
  end

  def hungry?
    if hunger_level <= 2
      return true
    else
      return false
    end
  end

  def eat
    @hunger_level = @hunger_level + 1
  end
end
