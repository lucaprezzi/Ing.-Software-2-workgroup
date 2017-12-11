Feature: edit a performance
  In order to keep track of performances in my app
  As a user
  I want to edit a performance


  Background:
    Given there is a performance of the client called "Università degli Studi di Trento"


  Scenario: change duration of the performance
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I fill in the following:
      | performance_duration          | 10                       |
    And I press "Submit"
    Then I should be on the show page of the performance of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "duration" field should contain "10"


  Scenario: error when inserting invalid duration
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I fill in the following:
      | performance_duration          | hkl                      |
    And I press "Submit"
    Then I should get an error message


  Scenario: change description of a performance
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    When I fill in the following:
      | performance_description       | applicazione web         |
    And I press "Submit"
    Then I should be on the show page of the performance of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "description" field should contain "applicazione web"


  Scenario: error when editing a performance without specifying the client
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I do not select client from "performance[client_id]"
    And I press "Submit"
    Then I should get an error message


  Scenario: change date of a performance
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I select "2" from "performance[date(3i)]"
    And I select "December" from "performance[date(2i)]"
    And I select "2017" from "performance[date(1i)]"
    And I press "Submit"
    Then I should be on the show page of the performance of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "date" field should contain "2017-12-02"


  Scenario: change client of a performance
    Given I am on the performances page
    And there is a client called "Segreteria Unitn"
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I select "Segreteria Unitn" from "performance[client_id]"
    And I press "Submit"
    Then I should be on the show page of the performance of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "client" field should contain "Segreteria Unitn"


  Scenario: change rate of a performance
    Given I am on the performances page
    And there is a rate with value "10"
    And the performance of the client called "Università degli Studi di Trento" has not been yet invoiced
    When I press "Edit"
    And I select "10" from "performance[rate_id]"
    And I press "Submit"
    Then I should be on the show page of the performance of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "rate" field should contain "10"


  Scenario: error when editing an already invoiced performance
    Given I am on the performances page
    And the performance of the client called "Università degli Studi di Trento" has been already invoiced
    When I press "Edit"
    Then the submit button should not appear
