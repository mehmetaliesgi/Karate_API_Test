Feature: JPH04 User must be import json files in the feature file

  Background:
    * def baseUrl = "https://jsonplaceholder.typicode.com"
    * def pathParams = "/posts/70"
    * def requestBody = read("requestBody.json")
    * def expectedData = read("expectedResponse.json")

  @Api
  Scenario: TC04 Import json files
    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == "keep-alive"
    And match response == expectedData
