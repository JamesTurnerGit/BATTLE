feature "Enter names - " do
  scenario "Enter names for both players - " do
    visit '/'
    fill_in 'player1', with: 'Turner'
    fill_in 'player2', with: 'Hooch'
    click_button 'Start Battle!'
    expect(page). to have_content "Turner vs. Hooch"
  end
end

feature "viewing hit points - " do
  scenario "seeing player2's hit points - " do
    visit '/'
    fill_in 'player1', with: 'Turner'
    fill_in 'player2', with: 'Hooch'
    click_button 'Start Battle!'
    expect(page). to have_content "Hooch Hp:100"
  end
end
