@placeOrder
Feature: Place Orders Unique Vision
    As customer 
    I want place orders 
    So I wanto buy a product

    Background:
    Given I access Unique Vision Homepage

@buyNoPresciprion
Scenario: Buy product without prescription
    When User acces My Account page
    And user proceeds login
    When user opens a no prescription product PDP
    And user clicks on Add to Bag button
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

@buyMountOnly
Scenario: Buy product without prescription
    When User acces My Account page
    And user proceeds login
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user select Mount Only lens option
    And user add product to cart
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

@buyNoMeasureLens
Scenario: Buy product with Basics Lens
    When User acces My Account page
    And user proceeds login
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user select No Measure lens option
    And user selects Basics lens
    And user add product to cart
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
 
@buyFarLens
Scenario: Buy product with Lens Prescriprion Far
    When User acces My Account page
    And user proceeds login
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user select Far lens option
    And user sets prescription data
    And user checks to confirm prescription
    And user selects PlusUV lens
    And user add product to cart
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

@buyNearLens
Scenario: Buy product with Lens Prescriprion Near
    When User acces My Account page
    And user proceeds login
    And user opens product Paulina Red PDP
    And clicks on Buy Now button
    And user select Near lens option
    And user sets prescription data
    And user checks to confirm prescription
    And user selects Premium lens
    And user add product to cart
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