feature 'Losing a game' do
  scenario 'Player 2 loses the game' do
    allow_any_instance_of(Game).to receive(:over?)\
      .and_return(true)
    enter_names
    should_see '0 Hit Points left.'
  end
end
