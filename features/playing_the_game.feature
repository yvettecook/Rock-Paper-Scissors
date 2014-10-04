Feature: Playing the game
	As a competitive type
	I have signed in
	And now want to play the game

	Scenario: Choice of weapon
		Given I am on the game page
		Then I see three choices

	Scenario: Choosing a weapon
		Given I am on the game page
		When I choose 'rock'
		And click 'Fight!'
		Then I should go to the outcome page
