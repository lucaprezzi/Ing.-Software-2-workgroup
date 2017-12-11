Feature: delete an invoice
  In order to keep track of invoices in my app
  As a user
  I want to delete an invoice


  Background:
    Given there is an invoice of the client called "Università degli studi di Trento"

@javascript
  Scenario: delete an invoice
    Given I am on the invoices page
    When I press "Delete"
    And I press Ok on the popup
    Then I should be on invoices page
    And I should see a notice indicating success
    And the invoice of the client "Università degli Studi di Trento" should not be in the list
