Feature: manage automatic invoice
  In order to keep track of invoices in my app
  As a user
  I want to invoice in an automatic way

  Background:
    Given there is a performance of the previous month

  Scenario: automatic invoicing
    When I open the home page
    Then all the performances related to the previous month are invoiced
