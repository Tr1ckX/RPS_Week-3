Feature: Arriving the welcome page
In order to play RPS player needs to register

Scenario: Register
Given player arrives to the homepage
When player fills in his name
And clicks on register
Then he should see a welcome message with his name
