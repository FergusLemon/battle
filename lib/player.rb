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
    hit = random_damage
    hit > @hit_points ? @hit_points = 0 : @hit_points -= hit
  end

  private

  def random_damage
    rand(DAMAGE_RANGE)
  end
end
