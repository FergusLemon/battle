require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('Player 1') }
  let(:player_2) { double('Player 2') }

  before do
    allow(player_1).to receive(:hit_points)
    allow(player_2).to receive(:hit_points)
    allow(player_1).to receive(:incur_damage)
    allow(player_2).to receive(:incur_damage)
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
    it 'has no winner by default' do
      expect(game.winner).to eq(nil)
    end
  end

  describe '@@games' do
    it 'cannot be tampered with' do
      described_class.games << :invalid
      expect(described_class.games).not_to include(:invalid)
    end
  end

  describe '#attack' do
    it 'sends a message to players' do
      expect(player_1).to receive(:incur_damage)
      game.attack(player_1)
    end
    it 'switches the active player' do
      game.attack(player_2)
      expect(game.attacker).to eq(player_2)
    end
    context 'when the game is over' do
      it 'raises an error' do
        allow(game).to receive(:over?).and_return(true)
        expect { game.attack(player_1) }.to raise_error( 'You cannot attack, this game is over.' )
      end
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

  describe '#winner' do
    it 'returns the winner of the game' do
      allow(player_1).to receive(:hit_points).and_return(0)
      expect(game.winner).to eq(player_2)
    end
  end
end
