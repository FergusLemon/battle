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
end
