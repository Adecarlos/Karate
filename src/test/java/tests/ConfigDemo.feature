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
    
     Scenario: Esse da errado no outro
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    