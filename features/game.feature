Feature: In order to play the game
As a player
I want to be able to control countries

  Scenario: See several countries
  Given I have just started the game
  When I am on the homepage
  Then I can see some countries

  Scenario: As a new player
  When the game is setup
  Then I should see some armies
  