Feature: edit a rate
  In order to keep track of rates in my app
  As a user
  I want to edit a rate


  Background:
    Given there is a rate with value "9.5"


  Scenario: change a rate
    Given I am on the rates page
    When I press the "Edit"
    Then I should be on the edit rate page
    And I should see the following:
      | hourly_rate     | 9,5           |
    When I fill in the following:
      | hourly_rate     | 10            |
    Then I should be on rates page
    And I should see a notice indicating success
    And the "hourly_rate" field should contain "10"


  Scenario: error when inserting an hourly rate that already exists
    Given I am on the rates page
    And there is a rate "10"
    When I press "Edit" related to the rate with value "9.5"
    Then I should be on the edit rate page
    And I should see the following:
      | hourly_rate     | 9,5           |
    When I fill in the following:
      | hourly_rate     | 10            |
    Then I should get an error message


// Hourly rate è salvata con il "." per indicare i numeri decimali, nei number field
// I numeri decimali vengono rappresentati e inseriti in caso di new o edit tramite ","
