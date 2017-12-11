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
      | rate_hourly_rate     | 9.5           |
    And I press "Submit"
    Then I should be on the show page of my new rate
    And I should see a notice indicating success


  Scenario: error when inserting an invalid hourly rate
    Given I am on the rates page
    When I press "New Rate"
    And I fill in the following:
      | rate_hourly_rate     | jkdshkfgsd           |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting an invalid hourly rate
    Given I am on the rates page
    When I press "New Rate"
    And I fill in the following:
      | rate_hourly_rate     | 9,5           |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting an hourly rate that already exists
    Given I am on the rates page
    And there is a rate with value "8.5"
    When I press "New Rate"
    And I fill in the following:
      | rate_hourly_rate     | 8.5            |
    And I press "Submit"
    Then I should get an error message
