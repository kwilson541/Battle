require 'game'

describe Game do

	subject(:game) { described_class.new }
	let(:player2) { double(:player2) }

	describe '#attack' do
		it 'expects player to receive damage' do
			expect(player2).to receive(:reduce_hp)
			game.attack(player2)
		end
	end

end