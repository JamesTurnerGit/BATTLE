class Player

  DEFAULT_HITPOINTS = 60

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def take_damage(damage)
    @hitpoints -= damage
  end

end
