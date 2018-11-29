# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
#
# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points
feature 'Displaying hit points' do
  scenario 'Players can see each others hit points' do
    enter_names('Brad', 'Angelina')
    should_see '100'
    should_see '100'
  end
end
