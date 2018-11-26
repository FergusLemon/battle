feature 'Switching turns' do
  scenario 'after one player attacks it is the turn of the next player' do
    enter_names('First Player', 'Second Player')
    click_on 'Attack'
    should_see "Second Player, it's your turn to attack now."
  end
end
