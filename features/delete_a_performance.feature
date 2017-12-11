Feature: delete a performance
  In order to keep track of performances in my app
  As a user
  I want to delete a performance


  Background:
    Given there is a performance called "Sviluppo App" related to the client called "Università degli studi di Trento"

@javascript
  Scenario: delete a performance
    Given I am on the performances page
    When I press "Delete"
    And I press Ok on the popup
    Then I should be on performances page
    And the performance "Sviluppo App" should not be in the list
	  And I should see a notice indicating success
