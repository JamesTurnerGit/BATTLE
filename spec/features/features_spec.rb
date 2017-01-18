feature "Enter names - " do
  scenario "Enter names for both players - " do
    sign_in_and_play
    expect(page). to have_content "Turner vs. Hooch"
  end
end

feature "viewing hit points - " do
  scenario "seeing player2's hit points - " do
    sign_in_and_play
    expect(page). to have_content "Hooch Hp:100"
  end
end
