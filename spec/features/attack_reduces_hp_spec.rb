feature 'Reducing HP' do
  scenario 'Player 2 is attacked and HP is reduced' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'James: 60HP'
    expect(page).to have_content 'James: 50HP'
  end
end
