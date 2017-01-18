class Game
  attr_reader :player_1, :player_2, :active_player

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1
  end

  def attack player
    player.takes_damage
  end

  def switch
    if player_1_active
      @active_player = player_2
    elsif player_2_active
      @active_player = player_1
    end
  end

  def opponent_of(player)
    if player == player_1
      player_2
    else
      player_1
    end
  end

  private

  def player_1_active
    @active_player == player_1
  end

  def player_2_active
    @active_player == player_2
  end

end
