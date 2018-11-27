feature 'Styling' do
  scenario 'homepage background is neutral colour' do
    visit '/'
    expect(page).to have_css('div.player-1')
    expect(page).to have_css('div.player-2')
  end

  scenario 'battle page background has styling for both players' do
    enter_names
    expect(page).to have_css('div.split.left')
    expect(page).to have_css('div.split.right')
  end
end
