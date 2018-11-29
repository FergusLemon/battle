feature 'Losing a game' do
  before do
    allow_any_instance_of(Game).to receive(:over?).and_return(true)
  end

  scenario 'A game is lost' do
    enter_names
    should_see '0'
  end

  scenario 'Player 2 loses the game' do
    enter_names_and_attack
    should_see '0 Hit Points left.'
  end

  scenario 'Has a branded header' do
    enter_names_and_attack
    should_see 'Battleground II'
  end

  scenario 'Starting a new game' do
    enter_names_and_attack
    click_on 'Play Again'
    should_see 'Welcome'
  end
end
