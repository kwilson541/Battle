require 'player'

describe Player do
  subject(:player) {described_class.new("Bill")}
  let(:player2) { described_class.new("Foo") }

  context "when players method return_name" do
    it "should return the name" do
      expect(player.name).to eq("Bill")
    end
  end

  context "when player 1 attacks" do

    it "should reduce player 2's hit points by 10" do
      player2.receive_damage
      expect(player2.hit_points).to eq(40)
    end
  end

end
