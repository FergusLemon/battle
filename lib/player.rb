class Player

  HIT_POINTS = 100

  def initialize(name='Mystery Player')
    @name = name
    @hit_points = HIT_POINTS
  end

  def name
    @name.dup
  end

  def hit_points
    @hit_points.dup
  end
end
