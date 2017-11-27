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
      | nominative        | Università degli studi di Trento  |
      | email             | mail@unitn.it                     |
      | via               | Sommarive                         |
      | civico            | 5                                 |
      | cap               | 38123                             |
      | citta             | Povo                              |
      | provincia         | Trento                            |
      | stato             | Italia                            |
      | numero            | 3891290673                        |
      | partita_iva       | 13066701007                       |
      | codice_fiscale    |                                   |
    Then I should be on the show page of my new client
    And I should see a notice indicating success


  Scenario: create a client with valid values and without partita iva
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | nominative        | Università degli studi di Trento  |
      | email             | mail@unitn.it                     |
      | via               | Sommarive                         |
      | civico            | 5                                 |
      | cap               | 38123                             |
      | citta             | Povo                              |
      | provincia         | Trento                            |
      | stato             | Italia                            |
      | numero            | 3891290673                        |
      | partita_iva       |                                   |
      | codice_fiscale    | UNVTRT66A31H345A                  |
    Then I should be on the show page of my new client
    And I should see a notice indicating success


  Scenario: error when inserting invalid nominative
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | nominative        |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid email
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | email             | viktoriya.kasiy                   |
    Then I should get an error message


  Scenario: error when not inserting email
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | email             |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid via
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | via               |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid civico
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | civico            | bnhj                              |
    Then I should get an error message


  Scenario: error when inserting invalid civico
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | civico            |                           	      |
    Then I should get an error message


  Scenario: error when inserting invalid cap
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | cap               | bjhnm                             |
    Then I should get an error message


  Scenario: error when not inserting cap
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | cap               |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid citta
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | citta             |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid telephone number
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | numero            |                                   |
    Then I should get an error message


  Scenario: error when inserting invalid codice fiscale
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | codice_fiscale    | KS67                              |
    Then I should get an error message


  Scenario: error when inserting invalid partita iva
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | partita_iva       | hju45                             |
    Then I should get an error message


  Scenario: error when not inserting partita iva and codice fiscale
    Given I am on the clients page
    When I press "New Client"
    And I fill in the following:
      | partita_iva       |                                   |
      | codice_fiscale    |                                   |
    Then I should get an error message
