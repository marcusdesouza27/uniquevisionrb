@registration
Feature:
    Marko - User registration
    As a customer I want make registration on Unique Vision site

    Background:
        Given I access Unique Vision Homepage
        And User acces My Account page

@new_user
Scenario: Customer Registration
    When user creates a new account
    Then he see your email on my account page

@duplicated_user
Scenario: Customer Registration
    When user creates a new account using
    Then he see your email on my account page