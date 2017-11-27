Feature: delete an invoice
  In order to keep track of invoices in my app
  As a user
  I want to delete an invoice


  Background:
    Given there is an invoice of the client called "Università degli studi di Trento"


  Scenario: delete an invoice
    Given I am on the invoices page
    When I press "Delete"
    And I press "OK"
    Then I should be on invoices page
    And I should see a notice indicating success
    And the invoice should not be in the list
