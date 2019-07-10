def sign_in_and_play
  visit('/')
  fill_in 'player1_name', with: 'Zi'
  fill_in 'player2_name', with: 'Tim'
  click_on 'Submit'
end
