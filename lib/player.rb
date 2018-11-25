class Player

  HIT_POINTS = 100
  NORMAL_HIT = 10

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

  def incur_damage
    if @hit_points < NORMAL_HIT
      @hit_points = 0
    else
      @hit_points -= NORMAL_HIT
    end
  end
end
