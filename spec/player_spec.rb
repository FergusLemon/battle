require 'player'

describe Player do
  let(:name) { 'Pete' }
  let(:mystery_name) { 'Mystery Player' }
  let(:player) { described_class.new(name)}
  let(:mystery_player) { described_class.new }

  describe '#name' do
    it 'knows its own name' do
      expect(player.name).to eq(name)
    end
    it 'defaults to "Mystery Player" when no name is given' do
      expect(mystery_player.name).to eq(mystery_name)
    end
  end

  describe 'HIT_POINTS' do
    it 'is a constant for each player at the start of a battle' do
      expect(player).to have_constant(:HIT_POINTS)
    end
    it 'has a value of 100 by default' do
      expect(described_class::HIT_POINTS).to eq(100)
    end
  end
end
