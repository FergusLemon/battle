class Player

  HIT_POINTS = 100

  def initialize(name='Mystery Player')
    @name = name
  end

  def name
    @name.dup
  end
end
