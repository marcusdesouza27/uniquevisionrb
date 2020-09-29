@AddToCart
Feature: Add products to cart
    As customer 
    I want add proruct to cart
    To place an order

    Background:
    Given I access Unique Vision Homepage

@CartNoPresciprionlogged
Scenario: Add product without prescription
    When User acces My Account page
    And user proceeds login
    When user opens a no prescription product PDP
    And user clicks on Add to Bag button
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart

@CartMountOnlylogged
Scenario: Add product without prescription
    When User acces My Account page
    And user proceeds login
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user select Mount Only lens option
    And user add product to cart
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart

@CartNoMeasureLenslogged
Scenario: Add product with Basics Lens
    When User acces My Account page
    And user proceeds login
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user selects No Measure lens option
    And user selects Basics lens
    And user add product to cart
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart
 
@CartFarLenslogged
Scenario: Add product with Lens Prescriprion Far
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
    Then user sees cart