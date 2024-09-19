Feature: Session Management
  Scenario: Session persistence between scenarios
    Given I start a new session
    And I store "app_cruddiy_tests" as "destination" in the session
    Then the session value of "destination" should be "app_cruddiy_tests"

  Scenario: No errors on page
    Then I should not see "Parse error"
    And I should not see "Fatal error"
    And I should see "Existing Table Relations"