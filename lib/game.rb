class Game

  attr_reader :player_one, :player_two, :current_player, :current_opponent

  def initialize(player_one,player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
    @current_opponent = player_two
    @@current_game = self
  end

  def self.current_game
    @@current_game
  end

  def attack(player)
    player.reduce_hp
  end

  def switch
    @current_opponent = current_player
    @current_player = other_player(current_player)
  end

  def opponent_dead?
    return true if @current_opponent.dead?
    return false
  end

  private

  def other_player(player)
    if player == player_one
      player_two
    else
      player_one
    end
  end
end
