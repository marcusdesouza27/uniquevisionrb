@placeOrder
Feature: Place Orders Unique Vision
    As customer 
    I want place orders 
    So I wanto buy a product

    Background:
    Given I access Unique Vision Homepage

@buyNoPrescription
Scenario: Buy product without prescription
    When User proceed login
    And opens a product PDP without prescription
    And clicks on Buy Now button
    Then user sees minicart with added product
    When clicks on buy now button
    Then sees the added product
    When user clicks on continue button
    Then sees checkout page
    When user forwards Step one
    And user confirms Step two
    And user sets payment info
    And user confirms place order
    Then user sees order confirmation page
 
 