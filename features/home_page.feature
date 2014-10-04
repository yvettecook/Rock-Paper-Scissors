Feature: Checking out the game
	As a curious type
	I look at the home page and want to play

	Scenario: Visiting the homepage
		Given I am on the homepage
		Then I should see 'Rock Paper Scissors: The Game'

	Scenario: Game registration
		Given I am on the homepage
		And sign in to play
		Then I should see a welcome message

	Scenario: Starting the game
		Given I am on the homepage
		And sign in to play
		And click 'Play'
		Then I should become a new player