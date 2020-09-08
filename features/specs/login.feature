@login
Feature:
    Marko - User login

    Background:
        Given I access Unique Vision Homepage
        And User acces login page

@valid_login
Scenario: Unique Vision Login Page
    When User proceed login
    Then I see logged page user

@invalid_login_user
Scenario: Unique Vision Login Page
    When User proceed login with unexistent email
    Then I see an alert error

@invalid_login_pwd
Scenario: Unique Vision Login Page
    When User proceed login with invalid password
    Then I see an alert error

@invalid_login_empty
Scenario: Unique Vision Login Page
    When User proceed login without fill fields
    Then I see an alert error