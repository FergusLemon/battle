require 'player'

describe Player do
  let(:name) { 'Pete' }
  let(:player) { described_class.new(name)}

  describe '#name' do
    it 'knows its own name' do
      expect(player.name).to eq(name)
    end
  end
end
