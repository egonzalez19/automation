Feature: login
  Go to github.com and login

  Scenario: login with valid user
    Given a valid user
    When go to login page
    And login with user and pass
    Then the user is logged
    And close browser

  Scenario: login with invalid user
    Given a invalid user
    When go to login page
    And login with user and pass
    Then the login page show invalid user
    And close browser