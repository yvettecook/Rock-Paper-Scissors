Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see 'Rock Paper Scissors: The Game'$/) do
  expect(page).to have_content 'Rock Paper Scissors: The Game'
end