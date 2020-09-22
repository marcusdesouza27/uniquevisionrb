@login
Feature:
    Marko - User login

    Background:
        Given I access Unique Vision Homepage
        And User acces My Account page

@valid_login
Scenario: Unique Vision Login Page
    When user proceeds login
    Then sees logged page user

@invalid_login_user
Scenario: Unique Vision Login Page
    When user proceeds login with unexistent email
    Then sees an alert error

@invalid_login_pwd
Scenario: Unique Vision Login Page
    When user proceeds login with invalid password
    Then sees an alert error

@invalid_login_empty
Scenario: Unique Vision Login Page
    When user proceeds login without fill fields
    Then sees an alert error