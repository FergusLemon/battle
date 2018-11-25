class Game
  @@games = []

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players = [player_1, player_2]
    @attacker = @players.first
    @defender = @players.last
    @@games << self
  end

  def self.games
    @@games.dup
  end

  def players
    @players.dup
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attacker
    @attacker
  end

  def defender
    @defender
  end

  def attack(player)
    player.incur_damage
    switch_turns
  end

  def over?
    player_on_zero?
  end
  private

  def switch_turns
    @attacker, @defender = @defender, @attacker
  end

  def player_on_zero?
    @players.any? { |p| p.hit_points == 0 }
  end
end
