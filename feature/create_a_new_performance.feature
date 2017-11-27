Feature: create a new performance
  In order to keep track of performances in my app
  As a user
  I want to create a performance

  
  Background:
    Given there is a client called "Università degli studi di Trento"


  Scenario: create a valid performance
    Given I am on the performances page
    When I press "New Performance"
    And I fill in the following:
      | description       | sviluppo app per voti    |
      | duration          | 8                        |
    And I select "Università degli studi di Trento" from "client_id"
    And I select "25" from "date.day"
    And I select "November" from "date.month"
    And I select "2017" from "date.year"
    Then I should be on the show page of my new performance
    And I should see a notice indicating success


  Scenario: error when inserting invalid duration
    Given I am on the performances page
    When I press "New Performance"
    And I fill in the following:
      | duration          | hkl                      |
    Then I should get an error message


  Scenario: error when creating performance without create the relative client before
    Given I am on the performances page
    When I press "New Performance"
    And I do not select client from "client_id"
    Then I should get an error message


  Scenario: error when editing a performance without specifying the client
    Given I am on the performances page
    When I press "New Performance"
    And I do not select client from "client_id"
    Then I should get an error message
