Feature: edit a client
  In order to keep track of clients in my app
  As a user
  I want to edit the profile of a client


  Background:
    Given there is a client called "Università degli Studi di Trento"


  Scenario: change nominative
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_nominative        | Paolo Collini              |
    And I press "Submit"
    Then I should be on the show page of the client called "Paolo Collini"
    And I should see a notice indicating success
    And the "nominative" field should contain "Paolo Collini"


  Scenario: change email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_email             | paolo.collini@unitn.it     |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "email" field should contain "paolo.collini@unitn.it"


  Scenario: change via
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_via               | Brennero       		       |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "via" field should contain "Brennero"


  Scenario: change civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_civico            | 435                        |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And I should see "435"


  Scenario: change cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_cap               | 38122                      |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And I should see "38122"


  Scenario: change città
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_citta             | Trento                     |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "citta" field should contain "Trento"


  Scenario: change provincia
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_provincia         | TN                         |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "provincia" field should contain "TN"


  Scenario: change stato
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_stato             | Italia                     |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "stato" field should contain "Italia"


  Scenario: change telephone number
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_numero            | 0461 281126                |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "numero" field should contain "0461 281126"


  Scenario: change partita iva
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_partita_iva       | 32674523423                |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "partita_iva" field should contain "32674523423"


  Scenario: change codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_codice_fiscale   | PLOCLN22A76865D             |
    And I press "Submit"
    Then I should be on the show page of the client called "Università degli Studi di Trento"
    And I should see a notice indicating success
    And the "codice_fiscale" field should contain "PLOCLN22A76865D"


  Scenario: error when not inserting nominative
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_nominative    	 |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_email            |  paolocollini               |
    And I press "Submit"
    Then I should be on the new page of clients


  Scenario: error when not inserting email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_email            |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting via
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_via              |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_civico           | shjdgjasdk                  |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_civico           |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_cap              | dadsad                      |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_cap              |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting città
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_citta            |                   |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting telephone number
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_numero           |                             |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_codice_fiscale   | 23123                       |
      | client_partita_iva      |                        |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when inserting invalid partita iva
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_codice_fiscale   |                         |
      | client_partita_iva      | 23123                       |
    And I press "Submit"
    Then I should get an error message


  Scenario: error when not inserting partita iva and codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | client_codice_fiscale   |                             |
      | client_partita_iva      |                             |
    And I press "Submit"
    Then I should get an error message
