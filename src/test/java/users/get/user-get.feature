Feature:  Get user on reqres.in

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "1"
    When method get
    Then status 200

