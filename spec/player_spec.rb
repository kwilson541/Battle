require 'player'

describe Player do
  subject(:player) { described_class.new('Tom') }

  it 'should test it can return its name' do
    expect(player.name).to eq 'Tom'
  end

end
