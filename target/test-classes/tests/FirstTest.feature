Feature: Sample API Tests

  Scenario: Test a Sample Get API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

  Scenario: Test a Sample Get API 500
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 500
