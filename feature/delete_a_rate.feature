Feature: delete a rate
  In order to keep track of rates in my app
  As a user
  I want to delete a rate


  Background:
    Given there is a rate with value "9.5"


  Scenario: delete a rate
    Given I am on the rates page
    When I press "Delete"
    And I press "Ok"
    Then I should be on rates page
    And I should see a notice indicating success
    And the rate should not be in the list
    And all the performances with that rate should be deleted
