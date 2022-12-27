Feature: Put API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")
    * def requestBody = read ('file:src/test/java/data/request2.json')
    
    Scenario: Put demo 1 
    Given path '/api/users/2'
    And request requestBody
    When method PUT
    Then status 200
    And print response