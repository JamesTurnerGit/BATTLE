describe 'battle - ' do
  feature 'Attacking - ' do
    scenario 'player one hits player two' do
      sign_in_and_play
      click_button "attack"
      content = "Link's attack was successful on Ganon"
      expect(page).to have_content content
    end
  end
  feature 'Damage is done' do
    scenario 'player one hits player two' do
      sign_in_and_play
      click_button "attack"
      click_button "OK"
      expect(page).to have_content('Ganon: 10HP')
    end
  end
end
