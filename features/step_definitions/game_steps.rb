When(/^I click on start game button$/) do
  click_button "Start game"
end

Then(/^I should see several countries$/) do
  ['United Kingdom','Iceland','Scandinavia'].each do |country|
    expect(page).to have_content(country)
  end
end

