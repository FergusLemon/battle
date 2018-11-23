feature 'Switching turns' do
  scenario 'after one player attacks it is the turn of the next player' do
    enter_names
    2.times do
      attack_and_return
    end
    should_see 'Player 1 Hit Points = 90'
  end
end
