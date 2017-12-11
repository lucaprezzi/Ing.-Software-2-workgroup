Feature: create a new client
  In order to keep track of clients in my app
  As a user
  I want to create a new client


  Background:
    Given there is not a client called "Università degli studi di Trento"


  Scenario: create a client with valid values and without codice fiscale
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_nominative        | Università degli studi di Trento  |
      | client_email             | mail@unitn.it                     |
      | client_via               | Sommarive                         |
      | client_civico            | 5                                 |
      | client_cap               | 38123                             |
      | client_citta             | Povo                              |
      | client_provincia         | Trento                            |
      | client_stato             | Italia                            |
      | client_numero            | 3891290673                        |
      | client_partita_iva       | 13066701007                       |
      | client_codice_fiscale    |                                   |
    And I press "Submit"
    Then I should be on the show page of my new client
    And I should see a notice indicating success


  Scenario: create a client with valid values and without partita iva
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_nominative        | Università degli studi di Trento  |
      | client_email             | mail@unitn.it                     |
      | client_via               | Sommarive                         |
      | client_civico            | 5                                 |
      | client_cap               | 38123                             |
      | client_citta             | Povo                              |
      | client_provincia         | Trento                            |
      | client_stato             | Italia                            |
      | client_numero            | 3891290673                        |
      | client_partita_iva       |                                   |
      | client_codice_fiscale    | UNVTRT66A31H345A                  |
    And I press "Submit"
    Then I should be on the show page of my new client
    And I should see a notice indicating success


  Scenario: error when inserting invalid client_nominative
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_nominative        |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_email
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_email             | viktoriya.kasiy                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting client_email
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_email             |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_via
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_via               |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_civico
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_civico            | bnhj                              |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_civico
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_civico            |                           	      |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_cap
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_cap               | bjhnm                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting client_cap
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_cap               |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid client_citta
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_citta             |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid telephone number
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_numero            |                                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid codice fiscale
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_codice_fiscale    | KS67                              |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid partita iva
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_partita_iva       | hju45                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting partita iva and codice fiscale
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | client_partita_iva       |                                   |
      | client_codice_fiscale    |                                   |
    And I press "Submit"
    Then I should get an error message
