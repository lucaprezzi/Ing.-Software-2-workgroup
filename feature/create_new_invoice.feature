Feature: create a new invoice
  In order to keep track of invoices in my app
  As a user
  I want to create a new invoice


  Background:
    Given there is a client called "Università degli studi di Trento"


  Scenario: create a valid invoice
    Given I am on the invoices page
    And there are at least one performance related to that client that has not been invoiced in the past
    When I press "New Invoce"
    And I select "Università degli studi di Trento" from "client_id"
    Then I should be on invoices page
    And I should see a notice indicating success


  Scenario: error when trying to invoice to a client that has 0 performances that can be invoices
    Given I am on the invoices page
    And there is not at least one performance related to that client that has not been invoiced in the past
    When I press "New Invoce"
    Then I should not see the client in the dropdown menu
