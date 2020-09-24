@AddToCartNoPrescription
Feature: Add products to cart
    As customer 
    I want add proruct to cart
    To place an order

    Background:
    Given I access Unique Vision Homepage

@CartNoPresciprionNotlogged
Scenario: Add product without prescription
    When user opens a no prescription product PDP
    And user clicks on Add to Bag button
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart

@CartMountOnlyNotlogged
Scenario: Add product without prescription
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user select Mount Only lens option
    And user add product to cart
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart

@CartNoMeasureLensNotlogged
Scenario: Add product with Basics Lens
    And user opens product with prescription PDP
    And clicks on Buy Now button
    And user selects No Measure lens option
    And user selects Basics lens
    And user add product to cart
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart

@CartNearLensunNotlogged
Scenario: Add product with Lens Prescriprion Near
    And user opens product Paulina Red PDP
    And clicks on Buy Now button
    And user select Near lens option
    And user sets prescription data
    And user checks to confirm prescription
    And user selects Premium lens
    And user add product to cart
    Then user sees minicart with added product
    When clicks on buy now button
    Then user sees cart