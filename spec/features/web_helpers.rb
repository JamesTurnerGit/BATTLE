def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Turner'
  fill_in 'player2', with: 'Hooch'
  click_button 'Start Battle!'
end
