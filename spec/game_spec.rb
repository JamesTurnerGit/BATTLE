require 'game'

describe Game do

  let(:player_1) { double :player_1, :name => 'Ken', :take_damage => 10}
  let(:player_2) { double :player_2, :name => 'Ryu', :take_damage => 10}
  subject(:game) { described_class.new(player_1, player_2)}

  it 'can attack an opponent' do
    allow(Kernel).to receive(:rand).and_return(10)
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

  it 'it shows opposing player' do
    expect(game.opposing_player).to eq player_2
  end

  it 'knows when the game is finished' do
    allow(player_1).to receive(:dead?).and_return(true)
    expect(game).to be_over
  end

  it 'knows who has won' do
    allow(player_1).to receive(:dead?).and_return(true)
    allow(player_2).to receive(:dead?).and_return(false)
    expect(game.winner).to eq player_2
  end
end
