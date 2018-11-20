feature 'Displaying hit points' do
  scenario 'Players can see each others hit points' do
    enter_names('Brad', 'Angelina')
    should_see 'Player 1 Hit Points = 100'
    should_see 'Player 2 Hit Points = 100'
  end
end
