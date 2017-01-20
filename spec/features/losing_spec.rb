feature "players losing" do
  scenario "player can loose" do
    allow(Kernel).to receive(:rand).and_return(30)
    sign_in_and_play
    2.times{attack_opponent}
    click_button 'Attack'
    expect(page).to have_content("James has lost :(")
  end
end
