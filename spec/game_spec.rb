require 'game'

describe Game do
  describe '#attack' do
    subject(:game) { described_class.new }
    let(:player1) { double :player1 }
    let(:player2) { double :player2, takes_damage: nil}
    it "attacks the opposing player" do
      game.attack player2
      expect(player2).to have_received(:takes_damage)
    end
  end
end
