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
Scenario: Customer Registration Duplicated e-mail
    When user creates a new account using existent email
    Then user sees alert message error

@mandatories_fields
Scenario: Customer Registration Mandatories fields
    When user creates a new account without mandatories fields
    Then user sees missing mandatories fields alert message

@password_match
Scenario: Customer Registration Password Doesn't Match
    When user creates a new account with check password unmatch
    Then user sees missing mandatories fields alert message