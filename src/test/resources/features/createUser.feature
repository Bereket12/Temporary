Feature: Bookstore API Create User Functionality

  @wip
  Scenario: Create a test user
    When User sends a POST request to create a user end point
    And User captures status code, userID, username and books information
    Then Verifies status code and verify username and userID is NOT null
  @test
    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    And Path param is "1"
    When I send GET request to "/get_user_by_id/{id}" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And "id" field should be same with path param
    ##And following fields should not be null
      | full_name |
      | email |
      | password |
