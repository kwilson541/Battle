require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player) {double :player}

  context "#attack" do

    it "player should receive damage" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end

  end

end
