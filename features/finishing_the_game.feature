Feature: Finishing the game
	As a competitive type
	I have signed in and made my choice
	And now want to know if I won

	Scenario: Viewing results page
		Given I have signed on and choosen a weapon
		When I have a fake opponent
		Then I should see my choice
		And I should see my opponents choice
