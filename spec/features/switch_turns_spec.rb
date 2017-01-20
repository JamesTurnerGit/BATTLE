
feature 'players switch turn' do
  scenario 'switch turns'do
    sign_in_and_play
    attack_opponent
    expect(page).not_to have_content "Sid's turn"
    expect(page).to have_content "James's turn"
  end
end
