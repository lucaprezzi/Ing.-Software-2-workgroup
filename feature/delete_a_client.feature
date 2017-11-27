Feature: delete a client
  In order to keep track of clients in my app
  As a user
  I want to delete a client

 
  Background:
    Given there is a client called "Università degli studi di Trento"


  Scenario: delete a client
    Given I am on the clients page
    When I press "Delete"
    And I press "Ok"
    Then I should be on clients page
    And I should see a notice indicating success
    And the client should not be in the list
    And all the performances of the client should be deleted
