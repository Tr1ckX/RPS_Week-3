Feature: Starting the game
  In order to play RPS player needs to choose one from the three options.

  Scenario: Let's Play
    Given player arrives to the game page
    And sees 'Welcome !'
    When player clicks on the image
    Then he should see 'You won!'
