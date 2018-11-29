# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
#
# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation
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

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario "An attack reduces a player's hit points" do
    enter_names
    attack_and_return
    should_not_see 'Player 2 Hit Points = 100'
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP by 10
  scenario "An attack reduces a player's hit points" do
    enter_names
    2.times { attack_and_return }
    should_not_see 'Player 1 Hit Points = 100'
  end

  scenario 'Has a branded header' do
    enter_names
    click_on 'Attack'
    should_see 'Battleground II'
  end
end
