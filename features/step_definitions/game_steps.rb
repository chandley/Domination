Given(/^I have just started the game$/) do
  
end

When(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I can see some countries$/) do
  ['United Kingdom','Iceland','Scandinavia'].each do |country|
    expect(page).to have_content(country)
  end
end

Then(/^I can see my armies$/) do
  visit '/'
  expect(page).to have_content 1
end
