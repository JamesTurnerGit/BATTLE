require 'player'

describe Player do

  subject(:player) { described_class.new("Ken") }
  let(:player_2) { Player.new("Ryu") }
  it 'returns its name' do
    expect(player.name).to eq("Ken")
  end
  it 'has a default amount of hitpoints' do
    expect(player.hitpoints).to eq Player::DEFAULT_HITPOINTS
  end
  it 'can attack an opponent' do
    expect{player.attack(player_2)}.to change{player_2.hitpoints}.by(-10)
  end
  it 'can take damage' do
    expect{player_2.attack(player)}.to change{player.hitpoints}.by(-10)
  end
end
