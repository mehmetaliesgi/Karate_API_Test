Feature: User must be describe the test datas in the feature file

  Background: Describe test datas
    * def baseUrl = "https://jsonplaceholder.typicode.com"
    * def pathParams = "/posts/70"
    * def requestBody =
    """
      {
        "title":"Mehmet",
        "body":"Merhaba",
        "userId":10,
        "id":70
      }
    """

    * def expectedResponse =
    """
      {
        "title":"Mehmet",
        "body":"Merhaba",
        "userId":10,
        "id":70
      }
    """

  Scenario: TC03 Background Using
    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == "keep-alive"
    And match response == expectedResponse