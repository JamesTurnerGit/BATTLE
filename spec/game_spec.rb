require 'game'

describe Game do

  let(:player_1) { double :player_1, :name => 'Ken', :take_damage => 10}
  let(:player_2) { double :player_2, :name => 'Ryu', :take_damage => 10}
  subject(:game) { described_class.new(player_1, player_2)}

  it 'can attack an opponent' do
    game.attack(player_2)
    expect(player_2).to have_received(:take_damage).with 10
  end

  it 'shows the attackering player as player 1' do
    expect(game.current_player).to eq player_1
  end

  it 'show attacking player as player 2' do
    game.switch_player
    expect(game.current_player).to eq player_2
  end

end
