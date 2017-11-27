Feature: create a rate
  In order to keep track of rates in my app
  As a user
  I want to create a new rate

 
  Background:
    Given there is not a rate with value "9.5"


  Scenario: create a valid rate
    Given I am on the rates page
    When I press "New Rate"
    And I fill in the following:
      | hourly_rate     | 9,5           |
    Then I should be on the show page of my new rate
    And I should see message indicating success


  Scenario: error when inserting an invalid hourly rate
    Given I am on the rates page
    When I press "New Rate"
    And I fill in the following:
      | hourly_rate     | jkdshkfgsd           |
    Then I should get an error message


  Scenario: error when inserting an invalid hourly rate
    Given I am on the rates page
    When I press "New Rate"
    And I fill in the following:
      | hourly_rate     | 9.5           |
    Then I should get an error message


  Scenario: error when inserting an hourly rate that already exists
    Given I am on the rates page
    And there is a rate "10"
    When I press the "New Rate"
    And I fill in the following:
      | hourly_rate     | 10            |
    Then I should get an error message

    // Hourly rate è salvata con il "." per indicare i numeri decimali, nei number field
    // I numeri decimali vengono rappresentati e inseriti in caso di new o edit tramite ","
