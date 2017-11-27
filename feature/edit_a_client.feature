Feature: edit a client
  In order to keep track of clients in my app
  As a user
  I want to edit the profile of a client


  Background:
    Given there is a client called "Università degli studi di Trento"


  Scenario: change nominative
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | nominative        | Paolo Collini              |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "nominative" field should contain "Paolo Collini"


  Scenario: change email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | email             | paolo.collini@unitn.it     |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "email" field should contain "paolo.collini@unitn.it"


  Scenario: change via
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | via               | Brennero       		       |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "via" field should contain "Brennero"


  Scenario: change civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | civico            | 435                        |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "civico" field should contain "435"


  Scenario: change cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | cap               | 38122                      |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "cap" field should contain "38122"


  Scenario: change città
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | citta             | Trento                     |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "citta" field should contain "Trento"


  Scenario: change provincia
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | provincia         | TN                         |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "provincia" field should contain "TN"


  Scenario: change stato
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | stato             | Italia                     |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "stato" field should contain "Italia"


  Scenario: change telephone number
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | numero            | 0461 281126                |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "numero" field should contain "0461 281126"


  Scenario: change partita iva
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | partita_iva       | 32674523423                |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "partita_iva" field should contain "32674523423"


  Scenario: change codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | codice_fiscale   | PLOCLN22A76865D             |
    Then I should be on the show page of the client
    And I should see a notice indicating success
    And the "codice_fiscale" field should contain "PLOCLN22A76865D"


  Scenario: error when not inserting nominative
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | nominative    	 |                             |
    Then I should get an error message


  Scenario: error when inserting invalid email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | email            |  paolocollini               |
    Then I should get an error message


  Scenario: error when not inserting email
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | email            |                             |
    Then I should get an error message


  Scenario: error when not inserting via
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | via              |                             |
    Then I should get an error message


  Scenario: error when inserting invalid civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | civico           | shjdgjasdk                  |
    Then I should get an error message


  Scenario: error when not inserting civico
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | civico           |                             |
    Then I should get an error message


  Scenario: error when inserting invalid cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | cap              | dadsad                      |
    Then I should get an error message


  Scenario: error when not inserting cap
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | cap              |                             |
    Then I should get an error message


  Scenario: error when not inserting città
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | citta            | shjdgjasdk                  |
    Then I should get an error message


  Scenario: error when not inserting telephone number
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | number           |                             |
    Then I should get an error message


  Scenario: error when inserting invalid codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | codice_fiscale   | 23123                       |
    Then I should get an error message


  Scenario: error when inserting invalid partita iva
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | partita_iva      | 23123                       |
    Then I should get an error message


  Scenario: error when not inserting partita iva and codice fiscale
    Given I am on the clients page
    When I press "Edit"
    And I fill in the following:
      | codice_fiscale   |                             |
      | partita_iva      |                             |
    Then I should get an error message
