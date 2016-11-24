require 'game'

describe Game do

subject(:game) { described_class.new(player1, player2) }
let(:player1) { double(:player1) }
let(:player2) { double(:player2) }


	it 'should be initialized with players' do
		expect(game.player1).to eq player1
	end

  it 'should be initialized with an active player' do
    expect(game.active_player).to eq player1
  end


	context '#attack' do

		it 'should be able to attack another player' do
			expect(player2).to receive(:reduce_hp)
			game.attack(player2)
		end

    it 'should test active player is switched after an attack' do
      allow(player2).to receive(:reduce_hp)
      game.attack(player2)
      expect(game.active_player).to eq player2
    end

	end
end
