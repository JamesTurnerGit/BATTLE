feature "players losing" do
  scenario "player can loose" do
    sign_in_and_play
    10.times{attack_opponent}
    click_button 'Attack'
    expect(page).to have_content("James has lost :(")
  end
end
