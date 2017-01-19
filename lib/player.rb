class Player
	
	HP = 100
	
	attr_reader :name, :hp

	def initialize(name)
		@name=name
		@hp = HP

	end
	
	def reduce_hp
		@hp -= 10
	end
	
	def dead?
		true
	end
end