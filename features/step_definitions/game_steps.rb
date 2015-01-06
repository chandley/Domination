Given(/^I have just started the game$/) do
  
end

Then(/^I can see Belgiumß$/) do
  expect(page).to have_content('Belgium')
end
