Feature: edit user profile
  Go to github.com and login, go to edit page an edit

  Scenario: edit success
    Given a valid user
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to profile page
    And opens the profile edit
    Then the edition is shown
    When the user put bio
    And put company
    And put location
    And put website
    And put twitter username
    And save
    Then the profile is displayed
    And close browser

  Scenario: edit cancel
    Given a valid user
    When go to login page
    And login with user and pass
    Then the user is logged
    When the user go to profile page
    And opens the profile edit
    Then the edition is shown
    When the user clean the fields
    And cancel
    Then the profile is displayed
    And close browser