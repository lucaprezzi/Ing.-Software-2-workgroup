Feature: edit settings
  In order to manage my informations
  As a user
  I want to edit my settings


  Background:
    Given I am on the home page


  Scenario: change nominative
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Nominative        | AVAPOL              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "nominative" field should contain "AVAPOL"

  Scenario: change email
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Email        | avalop@avapol.org              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "email" field should contain "avalop@avapol.org"

  Scenario: change telephone
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Telephone        | (0039) 999-9999999              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "telephone" field should contain "(0039) 999-9999999"

  Scenario: change address
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Address        | via brennero, 99              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "address" field should contain "via brennero, 99"

  Scenario: change city
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_City        | Povo              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "city" field should contain "Povo"

  Scenario: change cap
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Cap        | 38123              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "cap" field should contain "38123"

  Scenario: change country
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_State        | Italy              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "country" field should contain "Italy"

  Scenario: change taxation
    Given I am on the settings page
    When I press "Edit"
    And I fill in the following:
      | Our_Tax        | 23              |
    And I press "Save"
    Then I should be on settings page
    And I should see a notice indicating success
    And the "taxation" field should contain "23"
