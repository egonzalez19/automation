Feature: login
  Go to github.com, login and create a new repository

  Scenario: login with valid user
    Given a valid user
    When go to login page
    Then login with user and pass
    And the user is logged
    When the user go to create repository page
    Then the user is in new repository page
    When the user put repository name
    Then the user put a description
    And the user create a repository
    And the repository is created