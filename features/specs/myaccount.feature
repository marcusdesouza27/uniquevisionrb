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
    When user proceeds login
    Then I verify all elements on page

@edit_profile_name
Scenario: Load Profile Name
    When user proceeds login as user to edit
    And user clicks on Profile option
    And edits your name and lastname
    And edits your email    
    And edits your password
    Then he sees the edit confirmation message

@restore_profile
Scenario: Restore edited profile
    When user proceeds login as edited user
    And user clicks on Profile option
    And restores older name and lastname
    And restores your email    
    And restores your password
    Then he sees the edit confirmation message

@no_credit_cards
Scenario: Credit Cards no Card
    When user proceeds login
    And user clicks in My Credits Cards menu
    Then sees no credit cards alert

@credit_cards_elements
Scenario: Credit Cards no Card
    When user proceeds login
    And user clicks in My Credits Cards menu
    Then 