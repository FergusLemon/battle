feature 'Attacking opponents' do
  scenario 'Players can attack each other' do
    enter_names
    click_on 'Attack'
    should_see 'Good Hit!'
  end

  scenario 'After an attack return to battle ground' do
    enter_names
    attack_and_return
    should_see 'Player 1 Hit Points'
  end

  scenario "An attack reduces a player's hit points" do
    enter_names
    attack_and_return
    should_see 'Player 2 Hit Points = 90'
  end
end
