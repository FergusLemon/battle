feature 'Entering names' do
  scenario 'Players can enter and submit their names' do
    visit '/'
    should_see 'Player 1 - Enter name:'
    should_see 'Player 2 - Enter name:'
    fill_in 'Player 1', with: 'Angelina'
    fill_in 'Player 2', with: 'Brad'
    click_on 'Submit'
    should_see 'Player 1 is Angelina'
    should_see 'Player 2 is Brad'
  end
end
