feature 'Attacking opponents' do
  scenario 'Players can attack each other' do
    enter_names('Jane', 'Peter')
    click_on 'Attack'
    should_see 'Good Hit!'
  end
end
