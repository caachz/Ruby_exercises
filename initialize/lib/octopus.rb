class Octopus
  attr_reader :name, :narwhal

  def initialize(name, narwhal)
    @name = name
    @narwhal = narwhal
  end

  def friend
    @narwhal
  end
end
