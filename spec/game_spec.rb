require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('Player 1') }
  let(:player_2) { double('Player 2') }

  describe '@@games' do
    it 'is a class variable for storing games' do
      expect(described_class.games).not_to be_empty
    end
    it 'stores instances of games' do
      expect(described_class.games).to include(game)
    end
  end

  context 'on initialization' do
    it 'has a player 1' do
      expect(game.players.first).to eq(player_1)
    end
    it 'has a player 2' do
      expect(game.players.last).to eq(player_2)
    end
    it 'has an attacker' do
      expect(game.attacker).to eq(player_1)
    end
    it 'has an defender' do
      expect(game.defender).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'sends a message to players' do
      allow(player_1).to receive(:incur_damage)
      expect(player_1).to receive(:incur_damage)
      game.attack(player_1)
    end
    it 'switches the active player' do
      allow(player_2).to receive(:incur_damage)
      game.attack(player_2)
      expect(game.attacker).to eq(player_2)
    end
  end

  describe '#over?' do
    it 'returns true when player 1 has zero hit points' do
      allow(player_1).to receive(:hit_points).and_return(0)
      expect(game.over?).to be true
    end
    it 'returns true when player 2 has zero hit points' do
      allow(player_1).to receive(:hit_points).and_return(10)
      allow(player_2).to receive(:hit_points).and_return(0)
      expect(game.over?).to be true
    end
  end
end
