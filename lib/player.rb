class Player

  def initialize(name='Mystery Player')
    @name = name
  end

  def name
    @name.dup
  end
end
