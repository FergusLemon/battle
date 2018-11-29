class Game
  attr_reader :attacker, :defender
  @@games = []

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players = [player_1, player_2]
    @attacker = @players.first
    @defender = @players.last
    @winner = nil
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

  def winner
    over? ? set_winner : @winner
  end

  def attack(player)
    raise 'You cannot attack, this game is over.' if over?
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

  def set_winner
    @players.reject { |p| p.hit_points == 0 }.first
  end
end
