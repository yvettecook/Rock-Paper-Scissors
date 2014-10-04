Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see 'Rock Paper Scissors: The Game'$/) do
  expect(page).to have_content 'Rock Paper Scissors: The Game'
end

Given(/^sign in to play$/) do
  fill_in 'name', with: 'Yvette'
  click_button 'Sign In'
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content("Welcome Yvette, let's get started")
end


Given(/^click 'Play'$/) do
  click_button 'Play'
end

Then(/^I should become a new player$/) do
  pending # express the regexp above with the code you wish you had
end

