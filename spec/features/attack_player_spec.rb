feature 'attack player' do
  scenario 'player 1 can attack player 2, and reduce HP by 10' do
    sign_in_and_play
    click_on 'Attack P2'
    expect(page).to have_content "Wham! Zi attacked Tim"
    expect(page).to have_content "50 HP"
  end
end
