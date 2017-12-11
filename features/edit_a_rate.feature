Feature: edit a rate
  In order to keep track of rates in my app
  As a user
  I want to edit a rate


  Background:
    Given there is a rate with value "9.5"


  Scenario: change a rate
    Given I am on the rates page
    When I press "Edit"
    When I fill in the following:
      | rate_hourly_rate     | 10            |
    And I press "Submit"
    Then I should be on the show page of my new rate
    And I should see a notice indicating success
    And the "hourly_rate" field should contain "10"


  Scenario: error when inserting an hourly rate that already exists
    Given I am on the rates page
    And there is a rate with value "10"
    When I press "Edit"
    When I fill in the following:
      | rate_hourly_rate     | 10            |
    And I press "Submit"
    Then I should get an error message
