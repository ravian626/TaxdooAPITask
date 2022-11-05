Feature: DELETE API

  Background: #we use this tag for the common url #def is used for defining variable.
    * url 'https://gorest.co.in'
    * header Accept = 'application/json'
    * def token = 'd705927389d0282e04cf2035673e06e89d7ef347ff839479a1ee19ab6ba2bb7a'

    #This function is to genrate the random string for the email address
    * def random_string =
      """
      function(s){
      var text = "";
      var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      for (var i=0; i<s; i++)
      text +=pattern.charAt(Math.floor(Math.random()* pattern.length()));
      return text;
      }
      """
    * def randomString = random_string(10)
    * print randomString
    * def requestPayload =
      """
      {
      "name": "abc",	
      "gender": "male",	
      "status": "active"
      }
      """
    * requestPayload.email=randomString + "@gmail.com"
    * print requestPayload

  #DELERE Request
  Scenario: Delete User with given user ID
    #1. Create User using POST Call
    Given header Authorization = 'Bearer ' + token
    Given path '/public/v2/users'
    And request requestPayload
    When method POST
    Then status 201
    And print response
    And match $.id == '#present'
    #2. Fetch the User ID from the Response
    * def userId = $.id
    * print userId
    #3. Delete the same User
    Given header Authorization = 'Bearer ' + token
    Given path '/public/v2/users/'+ userId
    When method DELETE
    Then status 204
    #4. Get the same user with User ID
    Given path '/public/v2/users/'+ userId
    When method GET
    Then status 404
    And match $.message == 'Resource not found'
