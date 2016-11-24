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

	it 'should be initialized with an inactive player' do
		expect(game.inactive_player).to eq player2
	end

  it 'should be initialized with a dead player variable' do
    expect(game.dead_player).to eq nil
  end


	context '#attack' do
    before do
      allow(player2).to receive(:hp).and_return(20)
      allow(player1).to receive(:hp).and_return(20)
    end


		it 'should be able to attack another player' do
			expect(player2).to receive(:reduce_hp)
			game.attack(player2)
		end

		it 'should test active player is switched after an attack' do
			allow(player2).to receive(:reduce_hp)
			game.attack(player2)
			expect(game.active_player).to eq player2
		end

		it 'should test inactive player is switched after an attack' do
			allow(player2).to receive(:reduce_hp)
			game.attack(player2)
			expect(game.inactive_player).to eq player1
		end

    context 'dead player' do

      it 'should test a dead player is set' do
        allow(player2).to receive(:reduce_hp)
        allow(player2).to receive(:hp).and_return(0)
        game.attack(player2)
        expect(game.dead_player).to eq player2
      end
    end
	end
end
