feature 'switching turns' do

  scenario 'switching turns' do
    sign_in_and_play
    expect($game.current_turn.name).to eq "Zi"
  end

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Zi's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Zi's turn"
      expect(page).to have_content "Tim's turn"
    end
  end
end
