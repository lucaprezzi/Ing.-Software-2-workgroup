Feature: delete a client
  In order to keep track of clients in my app
  As a user
  I want to delete a client
 

  Background:
    Given there is a client called "Università degli Studi di Trento"

@javascript
  Scenario: delete a client
    Given I am on the clients page
    When I press "Delete"
    And I press Ok on the popup
    Then I should be on clients page
    And I should see a notice indicating success
    And the client "Università degli Studi di Trento" should not be in the list
    And all the performances of the client "Università degli Studi di Trento" should be deleted
