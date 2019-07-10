feature 'view hit points' do
  scenario 'player 1 can view player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content '60 HP'
  end
end
