Given(/^I have signed on and choosen a weapon$/) do
  visit '/'
  fill_in 'name', with: 'Yvette'
  click_button 'Sign In'
  click_button 'Play'
	choose("choice_rock")
end

# When(/^I have a fake opponent$/) do
# 	# @player2_name = 'Test'
# 	# @player2_choice = 'Paper'
# 	# click_button('Fight!')
# end

Then(/^I should see my choice$/) do
  expect(page).to have_content("Yvette choose: rock")
end

Then(/^I should see my opponents choice$/) do
  pending # express the regexp above with the code you wish you had
end
