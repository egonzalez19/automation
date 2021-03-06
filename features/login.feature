Feature: login
  Go to github.com and login

  Scenario: login with valid user
    Given a valid password
    When go to login page
    And login with user and pass
    Then the user is logged

  Scenario: login with invalid user
    Given an invalid password
    When go to login page
    And login with user and pass
    Then the login page show invalid user
