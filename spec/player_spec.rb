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

  describe '#hit_points' do
    it 'tells a player how many hit points they have' do
      expect(player.hit_points).to eq(described_class::HIT_POINTS)
    end
  end

  describe 'NORMAL_HIT' do
    it 'is a constant for each player throughout' do
      expect(player).to have_constant(:NORMAL_HIT)
    end
    it 'has a value of 10 by default' do
      expect(described_class::NORMAL_HIT).to eq(10)
    end
  end

  describe '#incur_damage' do
    it 'decreases players hit points' do
      expect { player.incur_damage }.to change { player.hit_points }
    end
    it 'does not reduce hit points below zero' do
      11.times { player.incur_damage }
      expect(player.hit_points).to be >= 0
    end
  end
end
