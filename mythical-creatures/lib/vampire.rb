class Vampire
  attr_reader :name, :pet, :thirsty

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def thirsty?
    return @thirsty
  end

  def drink
    @thirsty = false
    return @thirsty
  end
end
