module MyCapybaraHelper

  def enter_names(*names)
    visit '/'
    fill_in 'Player 1', with: names[0] ||= 'Mystery Player'
    fill_in 'Player 2', with: names[1] ||= 'Mystery Player'
    click_on 'Submit'
  end

  def attack_and_return
    click_on 'Attack'
    click_on 'Back To Battle'
  end

  #thanks to Yanis Triandaphilov for the recommendation, sourced from his blog
  #https://blog.codeship.com/principles-of-effective-testing-with-capybara/
  def should_see(text)
    expect(page).to have_content(text)
  end

  def should_not_see(text)
    expect(page).not_to have_content(text)
  end
end
