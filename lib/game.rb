class Game

  DEFAULT_DAMAGE = 10

  attr_reader :players

  def initialize(player_1, player_2)
    @players = {}
    @players[:player_1] = player_1
    @players[:player_2] = player_2
  end

  def attack(opponent, damage = DEFAULT_DAMAGE)
    opponent.take_damage(damage)
  end

end
