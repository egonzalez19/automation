Feature: delete repository
  Go to github.com and login, delete the repository

  Scenario: delete repository
    Given a valid password
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to settings page
    And delete repository