
  feature 'attack player 2 and get a confirmation' do
    scenario 'player 1 attacks player 2 and receives a strike confirmation' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Attacked'
    end
  end
