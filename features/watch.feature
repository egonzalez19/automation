Feature: watch repository
  Go to github.com, login and creawatchte the repository

  Scenario: watch repository
    Given a valid password
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to repository page
    Then the user is in repository page
    When the user watch repository
    Then the repository is watched

  Scenario: unwatch repository
    Given a valid password
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to repository page
    Then the user is in repository page
    When the user unwatch repository
    Then the repository is unwatched
