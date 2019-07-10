feature 'home page' do
  scenario 'Can enter name into form and submit that form' do
    sign_in_and_play
    expect(page).to have_content 'Zi'
    expect(page).to have_content 'Tim'
  end
end
