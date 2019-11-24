class Ogre
  attr_reader :name, :home, :human, :swings, :hits, :apology

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @human = human
    @swings = 0
    @hits = 0
    @apology = ""
  end

  def encounter(human)
    human.encounter_counter
    if human.notices_ogre?
      @swings += 1
      if @swings % 2 == 0
        @hits += 1
      end
    end
  end

  def encounter_counter(human)
    human.total_encounters
  end

  def swing_at(human)
    @swings += 1
  end

  def hits
    return @hits
  end

  def apologize(human)
    @apology = "Sorry"
    return @apology
  end
end

class Human
  attr_reader :name, :encounters, :notice, :ogre, :apology

  def initialize(name = "Jane")
    @name = name
    @encounters = 0
    @notice = false
    @ogre = ogre
    @apology
  end

  def encounter_counter
    @encounters += 1
    return @encounters
  end

  def total_encounters
    return @encounters
  end

  def notices_ogre?
    if @encounters % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?(ogre)
    if ogre.hits >= 1 && ogre.apology == ""
      true
    elsif ogre.apology == "Sorry"
      false
    else
      false
    end
  end
end
