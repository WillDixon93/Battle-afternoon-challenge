feature 'Testing infrastructure' do
  scenario 'displays the webpage' do 
    visit('/')
  expect(page).to have_content("Testing infrastructure working!")
  end
end

feature 'Enter names' do
  scenario 'putting in names' do 
    visit('/')
    fill_in('player_1', with: 'Will')
    fill_in('player_2', with: "Ollie")
    click_button('Submit')
  expect(page).to have_content("Will v Ollie")
  end
end