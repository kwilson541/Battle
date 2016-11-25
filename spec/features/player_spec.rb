require 'player.rb'

describe Player do
  context "when players method return_name" do
    user_name = "Bill"
    subject(:player) {described_class.new(user_name)}
    it "should return the name" do
      expect(player.name).to eq(user_name)
    end
  end

  context "when players attack" do
    user_name = "Bill"
    subject(:player) {described_class.new(user_name)}
    it "should reduce another player's hit points by 10" do
      expect(player.attack).to eq(40)
    end
  end
end
