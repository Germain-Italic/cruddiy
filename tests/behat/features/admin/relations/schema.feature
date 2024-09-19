Feature: Check admin schema import form
  Scenario: Check link to import schema page
    Then I follow "Import Schema or Dump"

  Scenario: Session persistence between scenarios
    Given I start a new session
    And I store "app_cruddiy_tests" as "destination" in the session
    Then the session value of "destination" should be "app_cruddiy_tests"

  Scenario: Check schema import form
    Then I should see "Import schema"
    And I should not see "Parse error"
    And I should not see "Fatal error"

  Scenario: Check schema import form
    # Given I am on "/core/schema.php"
    When I select "../schema/Tests - Admin.sql" from "schemaFile"

    And I press "Import schema"

    Then I should see "Existing Table Relations"
    And I should not see "Parse error"
    And I should not see "Fatal error"
