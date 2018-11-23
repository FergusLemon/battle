feature 'Losing a game' do
  scenario 'Player 2 loses the game' do
    enter_names('Anna', 'Ben')
    19.times do
      attack_and_return
    end
    should_see 'Ben has 0 Hit Points left. Anna wins!'
  end
end
