feature 'Homepage landing words' do
  it 'contains a welcome message' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
