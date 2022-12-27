Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Simple Get Request
  Scenario: Get Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Get with background
  Scenario: Get Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  # Get with path and parameters
  Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  # Get with assertions
  Scenario: Get Demo 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And print response.data.length
    And assert response.data.length == 6
    And match response.data[0].id == 7
