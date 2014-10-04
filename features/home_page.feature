Feature: Checking out the game
	As a curious type
	I look at the home page and want to play

	Scenario: Visiting the homepage
		Given I am on the homepage
		Then I should see 'Rock Paper Scissors: The Game'
		