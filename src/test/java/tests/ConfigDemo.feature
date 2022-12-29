Feature: Config Demo

  Background: 
    * url baseURL
    * header Accept = 'application/json'
    
  Scenario: Config Demo 1
    Given print baseURL

  # Simple Get Request
  Scenario: Get Demo 1
    Given path '/users'
    When method GET
    Then status 200
    And print response