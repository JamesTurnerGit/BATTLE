class Player

	HP = 100

	attr_reader :name, :hp

	def initialize(name)
		@name=name
		@hp = HP
	end

	def reduce_hp(damage = 10)
		@hp -= damage
	end

	def dead?
		hp <= 0
	end
end
