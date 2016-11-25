require 'player.rb'

describe Player do
  subject(:player) {described_class.new("Bill")}
  let(:player2) { described_class.new("Foo") }

  context "when players method return_name" do
    it "should return the name" do
      expect(player.name).to eq("Bill")
    end
  end

  context "when player 1 attacks" do

    it "player 2 should receive damage" do
      expect(player2).to receive(:receive_damage)
      player.attack(player2)
    end

    it "should reduce player 2's hit points by 10" do
      player.attack(player2)
      expect(player2.hit_points).to eq(40)
    end
  end

end
