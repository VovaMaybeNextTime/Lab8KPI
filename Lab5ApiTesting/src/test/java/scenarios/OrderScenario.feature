@ApiTests
Feature: Api testing with help of Cucumber

  Scenario: Get exchange rate by currency name
    Given currency is "USD"
    When user try to get order by id
    Then user receive status code 200
    And response don't equal zero


  Scenario: Get exchange rate by currency name FAIL
    Given currency is "ZXC"
    When user try to get order by id
    Then user receive status code 201
    And response don't equal zero