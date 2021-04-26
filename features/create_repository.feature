Feature: create repository
  Go to github.com, login and create a new repository

  Scenario: create an repository
    Given a valid user
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to create repository page
    Then the user is in new repository page
    When the user put repository name
    And the user put a description
    And the user create a repository
    Then the repository is created
    And close browser

  Scenario: create an repository with same name
    Given a valid user
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to create repository page
    Then the user is in new repository page
    When the user put repository name
    Then the name is used
    And close browser