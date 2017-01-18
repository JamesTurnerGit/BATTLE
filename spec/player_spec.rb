require 'player'

describe Player do
  subject { described_class.new "Turner" }
  it "returns the player's name" do
    expect(subject.name).to eq "Turner"
  end
end
