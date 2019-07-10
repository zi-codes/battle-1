feature "losing and winning mechanics" do
  scenario "when player2's hp goes down to 0" do

    sign_in_and_play
    11.times do
      click_button 'Attack'
      click_button 'OK'
    end

    expect(page).to have_content 'You have won!'
  end

end
