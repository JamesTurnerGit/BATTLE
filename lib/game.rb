
class Game

  DEFAULT_DAMAGE = 10

  attr_reader :player1, :player2
  
  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
  end

  def attack(opponent, damage = DEFAULT_DAMAGE)
    opponent.take_damage(damage)
  end

end
