feature 'Colours' do
  scenario 'homepage background is neutral colour' do
    visit '/'
    expect(page).to have_css('div.player-1')
    expect(page).to have_css('div.player-2')
  end

  scenario 'battle page background is a crimson colour' do
    enter_names
    expect(page).to have_css('div.split.left')
    expect(page).to have_css('div.split.right')
  end
end
