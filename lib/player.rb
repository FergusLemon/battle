class Player

  HIT_POINTS = 100
  NORMAL_HIT = 10
  DAMAGE_RANGE = (1..100)

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
    if random_damage <= @hit_points
      @hit_points -= random_damage
    else
      @hit_points = 0
    end
  end

  private

  def random_damage
    rand(DAMAGE_RANGE)
  end
end
