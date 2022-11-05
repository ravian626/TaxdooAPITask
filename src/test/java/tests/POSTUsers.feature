Feature: POST API

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

  #POST Request
  Scenario: Create User
    Given header Authorization = 'Bearer ' + token
    Given path '/public/v2/users'
    And request requestPayload
    When method POST
    Then status 201
    And print response
    And match $.id == '#present'
    And match $.name == '#present'
    And match $.email == '#present'
