feature 'Losing a game' do
  before do
    allow_any_instance_of(Game).to receive(:over?).and_return(true)
  end
  scenario 'Player 2 loses the game' do
    enter_names
    should_see '0 Hit Points left.'
  end

  scenario 'Has a branded header' do
    enter_names
    should_see 'Battleground II'
  end
end
