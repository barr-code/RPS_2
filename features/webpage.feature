Feature: Joining a Game
	As a casual visitor to the site
	I want to be able to sign up to play rock paper scissors

Scenario: Visiting the Page
	Given I am on the home page
	Then I should see "Welcome to Rock, Paper, Scissors, Lizard, Spock!"

Scenario: Signing Up
	Given I am on the home page
	When I fill in "player" with "Victoria"
	And click on "Let's Play!"
	Then I should see "Welcome, Victoria. Choose a weapon."

Scenario: Choosing Rock
	Given I have signed up
	When I click on "rock"
	Then I should see "You chose rock."

Scenario: Choosing Scissors
	Given I have signed up
	When I click on "scissors"
	Then I should see "You chose scissors."

Scenario: Choosing Paper
	Given I have signed up
	When I click on "paper"
	Then I should see "You chose paper."

Scenario: Choosing Lizard
	Given I have signed up
	When I click on "lizard"
	Then I should see "You chose lizard."

Scenario: Choosing Spock
	Given I have signed up
	When I click on "Spock"
	Then I should see "You chose Spock."

Scenario: Winning the Game
	Given I have signed up
	When I click on "rock"
	Then I should see "wins!"