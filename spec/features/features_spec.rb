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

feature "attack other player" do
  scenario "attack other player and get confirmation" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page). to have_content "You have attacked Hooch!"
  end
end
