require 'game'

describe Game do

  let(:player_1) { double :player_1, :name => 'Ken', :take_damage => 10}
  let(:player_2) { double :player_2, :name => 'Ryu', :take_damage => 10}
  subject(:game) { described_class.new(player_1, player_2)}

  it 'can attack an opponent' do
    expect(game.attack(player_1)).to eq(player_2.take_damage)
  end

end
