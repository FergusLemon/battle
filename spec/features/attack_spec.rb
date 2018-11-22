feature 'Attacking opponents' do
  scenario 'Players can attack each other' do
    initiate_an_attack
    should_see 'Good Hit!'
  end

  scenario 'After an attack return to battle ground' do
    initiate_an_attack
    click_on 'Back To Battle'
    should_see 'Player 1 Hit Points'
  end
end
