Feature: edit a performance
  In order to keep track of performances in my app
  As a user
  I want to edit a performance


  Background:
    Given there is a performance of the client called "Università degli studi di Trento"


  Scenario: change duration of the performance
    Given I am on the performances page
    And the performance has not been yet invoiced
    When I press "Edit"
    And I fill in the following:
      | duration          | 10                       |
    Then I should be on the show page of the performance
    And I should see a notice indicating success
    And the "duration" field should contain "10"


  Scenario: error when inserting invalid duration
    Given I am on the performances page
    And the performance has not been yet invoiced
    When I press "Edit"
    And I fill in the following:
      | duration          | hkl                      |
    Then I should get an error message


  Scenario: change description of a performance
    Given I am on the performances page
    And the performance has not been yet invoiced
    When I press "Edit"
    When I fill in the following:
      | description       | applicazione web         |
    Then I should be on the show page of the performance
    And I should see a notice indicating success
    And the "description" field should contain "applicazione web"


  Scenario: error when editing a performance without specifying the client
    Given I am on the performances page
    And the performance has not been yet invoiced
    When I press "Edit"
    And I do not select client from "client_id"
    Then I should get an error message


  Scenario: change date of a performance
    Given I am on the performances page
    And the performance has not been yet invoiced
    When I press "Edit"
    And I select "2" from "date.day"
    And I select "December" from "date.month"
    And I select "2018" from "date.year"
    Then I should be on the show page of the performance
    And I should see a notice indicating success
    And the "date.day" field should contain "2"
    And the "date.month" field should contain "December"
    And the "date.year" field should contain "2018"


  Scenario: change client of a performance
    Given I am on the performances page
    And there is a client called "Segreteria unitn"
    And the performance has not been yet invoiced
    When I press "Edit"
    And I select "Segreteria Unitn" from "client_id"
    Then I should be on the show page of the performance
    And I should see a notice indicating success
    And the "client_id" field should contain "Segreteria Unitn"


  Scenario: change rate of a performance
    Given I am on the performances page
    And there is a rate "10"
    And the performance has not been yet invoiced
    When I press "Edit"
    And I select "10" from "rate_id"
    Then I should be on the show page of the performance
    And I should see a notice indicating success
    And the "rate" field should contain "10"


  Scenario: error when editing an already invoiced performance
    Given I am on the performances page
    And the performance has been already invoiced
    When I press "Edit"
    Then I should be on the edit page
    And the submit button should not appear
    And I should get an error message
