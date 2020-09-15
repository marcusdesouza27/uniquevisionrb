@myaccount
Feature: My Account page
    As logged user
    I see My Page
    So see and edit my user data

    Background:
        Given I access Unique Vision Homepage
        And User acces My Account page

@load_myAccount
Scenario: Load My Account Page
    When User proceed login
    Then I verify all elements on page

@edit_profile_name
Scenario: Load Profile Name
    When User proceed login
    And edits your data
    Then he sees the edit confirmation message