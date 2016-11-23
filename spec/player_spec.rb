require 'player'

describe Player do

subject(:player) { described_class.new('Kim') }

	describe '#name' do

		it 'expects a name to be displayed' do

			expect(player.name).to eq "Kim"
		end
	end

  describe '#reduce_hp' do
    it "expects hit points to be reduced by 10" do
      player.reduce_hp
      expect(player.hp).to eq 190
    end
  end

end
