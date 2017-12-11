Feature: create a new invoice
  In order to keep track of invoices in my app
  As a user
  I want to create a new invoice


  Background:
    Given there is a client called "Università degli studi di Trento"


  Scenario: create a valid invoice
    Given I am on the invoices page
    And there are at least one performance related to the client called "Università degli Studi di Trento" that has not been invoiced in the past
    When I press "New Invoice"
    And I select "Università degli Studi di Trento" from "invoice[client_id]"
    And I press "Submit"
    Then I should be on invoices page
    And I should see a notice indicating success


  Scenario: error when trying to invoice to a client that has 0 performances that can be invoices
    Given I am on the invoices page
    And there is not at least one performance related to the client called "Università degli Studi di Trento" that has not been invoiced in the past
    When I press "New Invoice"
    Then I should not see the client "Università degli Studi di Trento" in the dropdown menu

  Scenario: invoice number assigned in creation changes if exist an other invoice of the same year
    Given there is an invoice
    And there is a performance
    And I am on the invoices page
    And there are at least one performance related to the client called "Università degli Studi di Trento" that has not been invoiced in the past
    When I press "New Invoice"
    And I select "Università degli Studi di Trento" from "invoice[client_id]"
    And I press "Submit"
    Then I should be on invoices page
    And I should see a notice indicating success
    And I should see "2 - 2017"
