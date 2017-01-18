require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2, takes_damage: nil}
  subject{described_class.new player_1, player_2}

  describe '#attack' do
    it "attacks the opposing player" do
      subject.itself.attack player_2
      expect(player_2).to have_received(:takes_damage)
    end
  end
  describe '#player_1' do
    it "is expected to get player_1" do
      expect(subject.itself.player_1).to eq player_1
    end
  end
  describe '#player_2' do
    it "is expected to get player_2" do
      expect(subject.itself.player_2).to eq player_2
    end
  end
  describe '#active_player' do
    it "returns the active player" do
      expect(subject.itself.active_player).to eq player_1
    end
  end
  describe '#switch' do
    it "switches players after their turn" do
      subject.itself.switch
      expect(subject.itself.active_player).to eq player_2
    end
  end
end
