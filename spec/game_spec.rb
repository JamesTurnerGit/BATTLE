require 'game'

describe Game do
	subject(:game) {described_class.new(player_one, player_two)}
	let(:player_one) {double :player}
	let(:player_two) {double :player,reduce_hp: nil}


	describe '#attack' do
		it 'reduce the opponent HP by a random amount of damage' do
		  srand(67809)
			allow(player_two).to receive(:dead?).and_return(false)
			game.attack(player_two)
			expect(player_two).to have_received(:reduce_hp).with(3)
		end
	end

	describe '#opponent_dead?' do
		it 'returns true if opponent is dead' do
			allow(player_two).to receive(:dead?).and_return(true)
			expect(game.opponent_dead?).to eq true
		end
	end

	describe '#switch' do
		it 'changes the current player to player_two' do
			expect{game.switch}.to change{game.current_player}.to player_two
		end
		it 'changes the current player back to player_one' do
			game.switch
			expect{game.switch}.to change{game.current_player}.to player_one
		end
	end
end
