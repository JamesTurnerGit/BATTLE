describe 'battle - ' do
  feature 'Attacking - ' do
    scenario 'player one hits player two' do
      sign_in_and_play
      click_button "attack"
      content = "Link's attack was successfull on Ganon"
      expect(page).to have_content content
    end
  end
end
