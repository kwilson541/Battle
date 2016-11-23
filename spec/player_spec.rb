require 'player'

describe Player do

subject(:player) { described_class.new('Kim') }

	describe '#name' do

		it 'expects a name to be displayed' do

			expect(player.name).to eq "Kim"
		end
	end
end