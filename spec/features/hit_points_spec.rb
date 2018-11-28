feature 'Displaying hit points' do
  scenario 'Players can see each others hit points' do
    enter_names('Brad', 'Angelina')
    should_see '100'
    should_see '100'
  end
end
