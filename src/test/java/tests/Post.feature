Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")
    * def filePath = read ('file:src/test/java/data/request1.json')
    And print filePath
    * def requestBody = filePath

  # Simple post request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "Adecarlos","job": "Student"}
    When method POST
    Then status 201
    And print response

  # Post with background
  Scenario: Post Demo 2
    Given path '/users'
    And request {"name": "Adecarlos","job": "Student"}
    When method POST
    Then status 201
    And print response

  # Post with assertions
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "Adecarlos","job": "Student"}
    When method POST
    Then status 201
    And match response == {"name": "Adecarlos", "job": "Student", "id": "#string", "createdAt": "#ignore"}
    And print response

  # Post with read response from file
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "Adecarlos","job": "Student"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response

  # Post with read response from file
  Scenario: Post Demo 5
    Given path '/users'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response

  # Post changing parameters
  Scenario: Post Demo 6
    Given path '/users'
    And request requestBody
    And set requestBody.job = 'Student'
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response
