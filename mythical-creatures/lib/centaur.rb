class Centaur
  attr_reader :name, :breed, :mood, :position, :stamina

  def initialize(name, breed)
    @name = name
    @breed = breed
    @mood = false
    @position = "standing"
    @stamina = 0
  end

  def shoot
    if @stamina < 3 && @position != "laying down"
      @stamina += 1
      return "Twang!!!"
    else
      return "NO!"
    end
  end

  def run
    if @stamina < 3 && @position != "laying down"
      @stamina += 1
      return "Clop clop clop clop!!!"
    else
      return "NO!"
    end
  end

  def cranky?
    if @stamina < 3
      @mood = false
      return @mood
    else
      @mood = true
      return @mood
    end
  end

  def standing?
    return true if @position == "standing"
    false
  end

  def laying?
    return true if @position == "laying down"
    false
  end

  def lay_down
    @position = "laying down"
  end

  def stand_up
    @position = "standing"
  end

  def sleep
    if @position == "laying down"
      @stamina -= 1
      return @stamina
    else
      return "NO!"
    end
  end

  def drink_potion
    if @position == "standing" && @stamina > 0
      @stamina = 0
    elsif @stamina == 0
      return "gets sick"
    end
  end
end
