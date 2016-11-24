require 'player.rb'

describe Player do
  context "when players method return_name" do
    let(:user_name) {double(:user_name)}
    subject(:player) {described_class.new(user_name)}
    it "should return the name" do
      expect(player.name).to eq(user_name)
    end
  end
end
