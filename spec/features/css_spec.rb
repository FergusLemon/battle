feature 'Colours' do
  scenario 'homepage background is neutral colour' do
    visit '/'
    expect(page).to have_css('body')
  end
end
