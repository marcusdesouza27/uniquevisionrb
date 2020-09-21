@pdp
Feature: Product Detail Page
    As customer on Unique Vision Page
    I want see Product Detail Page
    So I learn about Product 
    And make decision about buy Products

    Background:
    Given I access Unique Vision Homepage

@pdpNoPrescription
Scenario: Validate PDP product without prescription
    When user opens a no prescription product PDP
    Then user sees products information
    And sees button to add to bag

@pdpWithPrescription
Scenario: Validate PDP product without prescription
    When user opens product with prescription PDP
    Then user sees products information
    And sees button Buy Now

@pdpWithTryNow
Scenario: Validate PDP product without prescription
    When user opens a product with tryon PDP
    Then user sees products information
    And sees button Try Now
     