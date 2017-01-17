require "Player"

describe Player do
  subject{described_class.new "phillip"}
  describe "creation" do
    it{expect(subject.name).to eq "phillip"}
  end
end
