class Rabbit

  def initialize(hash)
    @hash = hash
  end

  def name
    if @hash[:num_syllables] == 2
      @name = @hash[:name] + " Rabbit"
    else
      @name = @hash[:name]
    end
    @name
  end
end
