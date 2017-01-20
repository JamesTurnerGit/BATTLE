class Game


  attr_reader :players, :current_player


  def initialize(player_1, player_2)
    @@current_game = self
    @players = {}
    @players[:player_1] = player_1
    @players[:player_2] = player_2
    @current_player = player_1
  end

  def self.current_game
    @@current_game
  end

  def attack(opponent, damage = Kernel.rand(5..20))
    opponent.take_damage(damage)
    switch_player
  end

  def switch_player
    @current_player = other_player current_player
  end

  def other_player player
    return players[:player_2] if player == players[:player_1]
    players[:player_1]
  end

  def opposing_player
    other_player current_player
  end

  def over?
    !!(@players[:player_1].dead? || @players[:player_2].dead?)
  end

  def winner
    return @players[:player_2] unless @players[:player_2].dead?
    @players[:player_1]
  end
end
