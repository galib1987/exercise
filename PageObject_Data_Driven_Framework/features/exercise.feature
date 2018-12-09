Feature: Validate the Objectives defined for the exercise project


  Scenario: Validate the values are on the screen greater than zero
    Given Navigate to the application
    When Capture all text fields values
    Then Values should greater than zero

  Scenario: Validate the total balance matches with the sum of each values
    Given Navigate to the application
    When Capture all text fields values
    And Sum of all values
    And Capture the value from the Total balance
    Then Compare and both values should match

  Scenario: Validate the values are on the screen greater than zero
    Given Navigate to the application
    When Capture all text fields values
    Then Values should formated as currency

  Scenario: Validate the total balance matches with the sum of each values
    Given Navigate to the application
    When Capture all text fields values
    And Sum of all values
    And Capture the value from the Total balance