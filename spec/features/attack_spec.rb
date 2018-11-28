feature 'Attacking opponents' do
  scenario 'Players can attack each other' do
    enter_names
    click_on 'Attack'
    should_see 'Good Hit!'
  end

  scenario 'After an attack return to battle ground' do
    enter_names
    attack_and_return
    should_see 'Player 1:'
    should_see 'Player 2:'
  end

  scenario "An attack reduces a player's hit points" do
    enter_names
    attack_and_return
    should_not_see 'Player 2 Hit Points = 100'
  end

  scenario 'Has a branded header' do
    enter_names
    click_on 'Attack'
    should_see 'Battleground II'
  end
end
