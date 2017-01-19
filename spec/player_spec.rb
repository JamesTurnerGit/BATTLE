require 'player'

describe Player do
subject(:player) {described_class.new("Bob")}
subject(:player2) {described_class.new("Mark")}


	describe '#new' do
		it 'should return name' do
			new_player = Player.new("Bob")
			expect(new_player.name).to eq "Bob"
		end
	end

	describe '#attack' do
	 	it 'should reduce opponent HP by 10' do
	 		expect(player.reduce_hp).to eq 90
	 	end
	 end

	 describe '#dead?' do
		it 'should know when it\'s not dead' do
			is_expected.not_to be_dead
		end
	 	it 'should know when it\'s dead' do
	 		10.times do
	 			player.reduce_hp
	 		end
	 		expect(player).to be_dead
	 	end
	 end
end
