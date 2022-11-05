Feature: GET API

  Background: #we use this tag for the common url #def is used for defining variable.
    * url 'https://gorest.co.in'
    * header Accept = 'application/json'

  #Simple GET Request
  Scenario: Simple GET Request
    Given url 'https://gorest.co.in/public/v2/users'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  #GET Request with Background
  Scenario: GET Request with Background
    Given path '/public/v2/users'
    When method GET
    Then status 200
    And print response

  #GET Request with Path
  Scenario: GET Request with Path
    Given path '/public/v2/users'
    When method GET
    Then status 200
    And print response

  #GET Request with Parameters
  Scenario: GET Request with Parameters
    Given path '/public/v2/users'
    And param page = 1
    When method GET
    Then status 200
    And print response

  #GET Request with Assertions
  Scenario: GET Request with Assertion
    Given path '/public/v2/users'
    And param page = 1
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And match response.[0]name != null
    And assert response.length == 10
