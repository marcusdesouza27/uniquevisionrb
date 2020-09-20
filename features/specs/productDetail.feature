@pdp
Feature: Product Detail Page
    As customer on Unique Vision Page
    I want see Product Detail Page
    So I learn about Product 
    And make decision about buy Products

@pdpNoPrescription
Scenario: Validate PDP product without prescription
    When I open a no prescription product PDP
    Then I see products information
    And button to add to bag

@pdpWithPrescription
Scenario: Validate PDP product without prescription
    When I open a no prescription product PDP
    Then I see products information
    And button Buy Now

@pdpWithTryNow
Scenario: Validate PDP product without prescription
    When I open a no prescription product PDP
    Then I see products information
    And button Try Now
     