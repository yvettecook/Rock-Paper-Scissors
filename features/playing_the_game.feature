Feature: Playing the game
	As a competitive type
	I have signed in
	And now want to play the game

	Scenario: Choosing a weapon
		Given I am on the game page
		When I see three choices
		Then I can choose an option