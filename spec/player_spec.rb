require 'player'

describe Player do
  subject(:player) { described_class.new('Tom') }
  let(:player2) { described_class.new('Kim') }

  it 'should test it can return its name' do
    expect(player.name).to eq 'Tom'
  end

  it 'should test that new players have 20 HP' do
    expect(player.hp).to eq Player::DEFAULT_HP
  end

  it 'should be able to reduce HP' do
    player.reduce_hp
    expect(player.hp).to eq(Player::DEFAULT_HP - Player::DEFAULT_DAMAGE)
  end

end
