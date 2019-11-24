class Pirate
  attr_reader :name, :job, :cursed, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
  end

  def cursed?
    if @cursed >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @cursed += 1
  end

  def booty?
    return @booty
  end

  def rob_ship
    @booty += 100
  end
end
