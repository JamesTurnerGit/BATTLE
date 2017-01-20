class Game

  DEFAULT_DAMAGE = 10

  attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = {}
    @players[:player_1] = player_1
    @players[:player_2] = player_2
    @current_player = player_1
  end

  def attack(opponent, damage = DEFAULT_DAMAGE)
    opponent.take_damage(damage)
  end

  def switch_player
    
  end

end
