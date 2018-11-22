feature 'Entering names' do
  scenario 'Players can enter and submit their names' do
    visit '/'
    should_see 'Player 1 - Enter name:'
    should_see 'Player 2 - Enter name:'
    enter_names('Angelina', 'Brad')
    should_see 'Player 1 is Angelina'
    should_see 'Player 2 is Brad'
  end

  scenario 'Players leave their names blank' do
    visit '/'
    enter_names
    should_see 'Mystery Player'
  end
end
