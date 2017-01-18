require 'player'

describe Player do
  subject { described_class.new "Turner" }
  it "returns the player's name" do
    expect(subject.name).to eq "Turner"
  end
  describe "#takes_damage" do
    let(:damage) {10}
    it "deducts passed damage from health" do
      expect{subject.takes_damage damage}.to change{subject.health}.by(-damage)
    end
  end
  describe "#attack" do
    let(:player2) {double :player2,takes_damage: nil}
    it "attacks other player" do
      subject.attack player2
      expect(player2).to have_received(:takes_damage).with(10)
    end
  end
end
