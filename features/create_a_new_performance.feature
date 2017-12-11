Feature: create a new performance
  In order to keep track of performances in my app
  As a user
  I want to create a performance


  Background:
    Given there is a client called "Università degli Studi di Trento"
    And there is a rate with value "9.5"


  Scenario: create a valid performance
    Given I am on the performances page
    When I press "New Performance"
    And I fill in the following:
      | performance_description       | sviluppo app per voti    |
      | performance_duration          | 8                        |
    And I select "Università degli Studi di Trento" from "performance[client_id]"
    And I select "9.5" from "performance[rate_id]"
    And I select "25" from "performance[date(3i)]"
    And I select "November" from "performance[date(2i)]"
    And I select "2017" from "performance[date(1i)]"
    And I press "Submit"
    Then I should be on the show page of the performance "sviluppo app per voti"
    And I should see a notice indicating success


  Scenario: error when inserting invalid performance_duration
    Given I am on the performances page
    When I press "New Performance"
    And I fill in the following:
      | performance_duration          | hkl                      |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when editing a performance without specifying an existing client
    Given I am on the performances page
    When I press "New Performance"
    And I do not select client from "performance[client_id]"
    And I press "Submit"
    Then I should get an error message
