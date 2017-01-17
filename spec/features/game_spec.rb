require "game"
describe Game do
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject{described_class.new player_1, player_2}
  describe "#creation" do
    it "should have player one" do
      expect(subject.player_1).to eq player_1
    end
    it "should have player two" do
      expect(subject.player_2).to eq player_2
    end
  end
  describe "#attack" do
    it "should handle attacks" do
      allow(player_2).to receive(:takes_damage)
      subject.attack player_2
      expect(player_2).to have_received(:takes_damage).with(10)
    end
  end
end
