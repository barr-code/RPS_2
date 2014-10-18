Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content (text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |player, name|
  fill_in(player, :with => name)
end

When(/^click on "(.*?)"$/) do |play|
  click_button(play)
end

Given(/^I have signed up$/) do
  visit '/'
  fill_in("player", :with => "Victoria")
  click_button("Let's Play!")
end

When(/^I click on "(.*?)"$/) do |weapon|
  click_on(weapon)
end

When(/^the computer chooses scissors$/) do
  @computer = "scissors"
end