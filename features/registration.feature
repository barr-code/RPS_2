Feature: Joining a Game
	As a casual visitor to the site
	I want to be able to sign up to play rock paper scissors

Scenario: Visiting the Page
	Given I am on the home page
	Then I should see "Welcome to Rock Paper Scissors!"

Scenario: Signing Up
	Given I am on the home page
	When I fill in "player" with "Victoria"
	And click on "Let's Play!"
	Then I should see "Welcome, Victoria. Choose a weapon."