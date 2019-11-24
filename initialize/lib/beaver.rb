class Beaver

  attr_reader :names

  def initialize(names)
    @names = names
  end

  def name
    "#{@names} the Beaver"
  end

end
