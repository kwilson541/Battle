require 'game'

describe Game do

subject(:game) { described_class.new(player_klass, player, player) }
let(:player_klass) { double(:player_klass, :new => player ) }
let(:player){ double(:player) }

	it 'should be initialized with two players' do
		expect(game.player1).to eq player
		expect(game.player2).to eq player
	end
	
	describe '#attack' do

		it 'should be able to attack another player' do
			expect(player).to receive(:reduce_hp)
			game.attack(player)
		end
	end
end
