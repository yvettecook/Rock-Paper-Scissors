Given(/^I am on the game page$/) do
  visit '/new_game'
end

Then(/^I see three choices$/) do
  expect(page).to have_content("rock")
  expect(page).to have_content("paper")
  expect(page).to have_content("scissor")
end

When(/^I choose 'rock'$/) do
 choose("choice_rock")
end

When(/^click 'Fight!'$/) do
  click_button('Fight!')
end

Then(/^I should go to the outcome page$/) do
  expect(current_path).to eq('/result')
end