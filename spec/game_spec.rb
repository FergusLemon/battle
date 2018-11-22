require 'game'

describe Game do
  let(:game) { described_class.new(player_klass, other_player_klass) }
  let(:player_klass) { double('Player 1') }
  let(:other_player_klass) { double('Player 2') }

  context 'on initialization' do
    it 'has a player 1' do
      expect(game.player_1).to eq(player_klass)
    end
    it 'has a player 2' do
      expect(game.player_2).to eq(other_player_klass)
    end
  end

  describe '#attack' do
    it 'it sends a message to players' do
      allow(player_klass).to receive(:incur_damage)
      expect(player_klass).to receive(:incur_damage)
      game.attack(player_klass)
    end
  end
end
