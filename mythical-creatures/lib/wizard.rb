class Wizard
  attr_reader :name, :bearded, :rested, :stamina

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @stamina = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    return "sudo " + spell
  end

  def rested?
    if @stamina >= 3
      @rested = false
    else
      @rested = true
    end
  end

  def cast
    @stamina += 1
    return "MAGIC MISSILE!"
  end
end
