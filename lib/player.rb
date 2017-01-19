class Player

  DEFAULT_HITPOINTS = 60
  DEFAULT_DAMAGE = 10

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(opponent, damage = DEFAULT_DAMAGE)
    opponent.take_damage(damage)
  end

  def take_damage(damage)
    @hitpoints -= damage
  end

end
