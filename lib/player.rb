class Player
  attr_reader :name, :health
  def initialize initial_name, initial_health = 20
    @name = initial_name
    @health = initial_health
  end

  def takes_damage damage = 10
    @health -= damage
  end

  def attack target, damage = 10
    target.takes_damage damage
  end
end
