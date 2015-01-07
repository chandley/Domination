When(/^I click on start game button$/) do
  click_button "Start game"
end

Then(/^I should see several countries$/) do
  ['United Kingdom','Iceland','Scandinavia'].each do |country|
    expect(page).to have_content(country)
  end
end

  When(/^the game is setup$/) do
   step 'I am on the home page'
   step 'I click on start game button'
end

Then(/^I should see some armies$/) do
  expect(page).to have_content('player1')
  expect(page).to have_content('player2')
  expect(page).to have_content('1')
end


