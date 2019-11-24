class Werewolf
  attr_accessor :name, :location, :status, :hunger, :victims, :victim

  def initialize(name, location = "London")
    @name = name
    @location = location
    @status = "human"
    @hunger = false
    @victims = 0
    @victim = victim
  end

  def human?
    if @status == "human"
      true
    else
      false
    end
  end

  def wolf?
    if @status == "wolf"
      true
    else
      false
    end
  end

  def change!
    if @status == "human"
      @status = "wolf"
    elsif @status == "wolf"
      @status = "human"
    end
  end

  def hungry?
    if @status == "wolf" && @hunger == false && @victims < 1
      @hunger = true
    elsif @status == "human" || @victims > 0
      @hunger = false
    else
      return @hunger
    end
  end

  def consume_victim
    if @status == "human"
    elsif @status == "wolf"
      @victims += 1
      victim = :dead
    end
    return @victims
  end
end
