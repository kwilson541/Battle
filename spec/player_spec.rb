require 'player'

describe Player do

subject(:player1) { described_class.new('Kim') }
subject(:player2) { described_class.new('Mike') }

	describe '#name' do
		it 'expects a name to be displayed' do
			expect(player1.name).to eq "Kim"
		end
	end

	describe '#hp' do
		it 'has a default HP of 200' do
			expect(player1.hp).to eq Player::DEFAULT_HP
		end
	end

	describe '#reduce_hp' do
		it "expects hit points to be reduced by 10" do
			player1.reduce_hp
			expect(player1.hp).to eq 190
		end
	end

end
