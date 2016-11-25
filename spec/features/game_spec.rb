require 'game'

describe Game do
  subject(:game) {described_class.new(p1,p2)}
  let(:player) {double :player}
  let(:p1) {double :player}
  let(:p2) {double :player}


  context "#initialize" do
    it "should have two players" do
      expect(game.player1).to eq(p1)
    end
  end

  context "#attack" do

    it "player should receive damage" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end

  end

end
