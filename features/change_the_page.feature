Feature: change the page
  In order to keep track of clients in my app
  As a user
  I want to move in the website


  Background:
    Given I am on the home page


  Scenario: move to clients page from homepage
    Given I am on the home page
    When I press "Clients"
    Then I should be on clients page


  Scenario: move to clients page from performances
    Given I am on the performances page
    When I press "Clients"
    Then I should be on clients page


  Scenario: move to clients page from invoices
    Given I am on the invoices page
    When I press "Clients"
    Then I should be on clients page


  Scenario: move to clients page from rates
    Given I am on the rates page
    When I press "Clients"
    Then I should be on clients page


  Scenario: move to clients page from settings
    Given I am on the settings page
    When I press "Clients"
    Then I should be on clients page


  Scenario: move to performances page from homepage
    Given I am on the home page
    When I press "Performances"
    Then I should be on performances page


  Scenario: move to performances page from clients
    Given I am on the clients page
    When I press "Performances"
    Then I should be on performances page


  Scenario: move to performances page from invoices
    Given I am on the invoices page
    When I press "Performances"
    Then I should be on performances page


  Scenario: move to performances page from rates
    Given I am on the rates page
    When I press "Performances"
    Then I should be on performances page


  Scenario: move to performances page from settings
    Given I am on the settings page
    When I press "Performances"
    Then I should be on performances page


  Scenario: move to invoices page from homepage
    Given I am on the home page
    When I press "Invoices"
    Then I should be on invoices page


  Scenario: move to invoices page from clients
    Given I am on the clients page
    When I press "Invoices"
    Then I should be on invoices page


  Scenario: move to invoices page from performances
    Given I am on the performances page
    When I press "Invoices"
    Then I should be on invoices page


  Scenario: move to invoices page from rates
    Given I am on the rates page
    When I press "Invoices"
    Then I should be on invoices page


  Scenario: move to invoices page from settings
    Given I am on the settings page
    When I press "Invoices"
    Then I should be on invoices page


  Scenario: move to rates page from homepage
    Given I am on the home page
    When I press "Rates"
    Then I should be on rates page


  Scenario: move to rates page from clients
    Given I am on the clients page
    When I press "Rates"
    Then I should be on rates page


  Scenario: move to rates page from performances
    Given I am on the performances page
    When I press "Rates"
    Then I should be on rates page


  Scenario: move to rates page from invoices
    Given I am on the invoices page
    When I press "Rates"
    Then I should be on rates page


  Scenario: move to rates page from settings
    Given I am on the settings page
    When I press "Rates"
    Then I should be on rates page


  Scenario: move to settings page from homepage
    Given I am on the home page
    When I press "Settings"
    Then I should be on settings page


  Scenario: move to settings page from clients
    Given I am on the clients page
    When I press "Settings"
    Then I should be on settings page


  Scenario: move to settings page from performances
    Given I am on the performances page
    When I press "Settings"
    Then I should be on settings page


  Scenario: move to settings page from invoices
    Given I am on the invoices page
    When I press "Settings"
    Then I should be on settings page


  Scenario: move to settings page from rates
    Given I am on the rates page
    When I press "Settings"
    Then I should be on settings page


  Scenario: move to not invoiced performances page from performances page
    Given I am on the performances page
    When I press "Show only not invoiced performances"
    Then I should be on not invoiced performances page

  Scenario: move to performances page from not invoiced performances page
    Given I am on the not invoiced performances page
    When I press "Show all performances"
    Then I should be on performances page
