# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them
feature 'Entering names' do
  scenario 'Players can enter and submit their names' do
    visit '/'
    should_see 'Player 1'
    should_see 'Player 2'
    enter_names('Angelina', 'Brad')
    should_see 'Player 1: Angelina'
    should_see 'Player 2: Brad'
  end

  scenario 'Players leave their names blank' do
    visit '/'
    enter_names
    should_see 'Mystery Player'
  end

  scenario 'Welcome message on arrival' do
    visit '/'
    should_see 'Welcome to the Battleground'
  end
end
