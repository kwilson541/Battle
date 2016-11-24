require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player){double(:player)}
    it 'should be able to attack another player' do
      expect(player).to receive(:reduce_hp)
      game.attack(player)
    end
end
