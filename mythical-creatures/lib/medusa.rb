class Medusa

  attr_reader :name, :statues, :victim

  def initialize(name)
    @name = name
    @statues = []
    @victim = victim
  end

  def stare(victim)
    if @statues.length == 3
      @statues.shift
      @statues.push(victim)
      victim.material_to_stone
      return @statues.last
    else
      @statues.push(victim)
      victim.material_to_stone
    end
  end


end


class Person
  attr_reader :name, :material

  def initialize(name)
    @name = name
    @material = "human"
  end

  def stoned?
    if @material == "stone"
      return true
    else
      return false
    end
  end

  def material_to_stone
    @material = "stone"
  end
end
