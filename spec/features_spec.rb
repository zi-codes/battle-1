feature 'home page' do
  scenario 'Can enter name into form and submit that form' do
    visit('/')
    fill_in 'player1_name', with: 'Zi'
    fill_in 'player2_name', with: 'Genny'
    click_on 'Submit'
    expect(page).to have_content 'Zi'
    expect(page).to have_content 'Genny'
  end
end

feature 'view hit points' do
  scenario 'player 1 can view player 2s hit points' do
    visit('/')
    fill_in 'player1_name', with: 'Zi'
    fill_in 'player2_name', with: 'Genny'
    click_on 'Submit'
    expect(page).to have_content '60 HP'
  end
end
