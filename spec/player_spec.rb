require "Player"

describe Player do

  subject{described_class.new "phillip"}
  describe "#creation" do
    it{expect(subject.name).to eq "phillip"}
  end
  describe "#health" do
    it{expect(subject.health).to eq 20}
  end
  describe "#takes_damage" do
    it "is expected to take damage" do
      subject.takes_damage 10
      expect(subject.health).to eq 10
    end
  end
  describe "#attack" do
    let(:player_2) {double :player_2, takes_damage: nil}
    it "is expected to attack other player" do
      subject.attack player_2
      expect(player_2).to have_received(:takes_damage).with(10)
    end
  end
end
