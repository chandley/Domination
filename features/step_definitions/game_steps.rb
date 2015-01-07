Given(/^I have just started the game$/) do
  
end

Then(/^I can see some countries$/) do
  ['United Kingdom','Iceland','Scandinavia'].each do |country|
    expect(page).to have_content(country)
  end
end
