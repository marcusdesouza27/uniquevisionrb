@homepages
Feature:
    Homepage Unique Vision

@homeuv
Scenario: Open Homepage Unique Vision
    When I access Unique Vision Homepage
    Then I see Homepage loaded

@categoryEyewear
Scenario: Goes to Eyewear category page
    When user clicks on menu option Eyeglasses
    Then sees his category page

@categorySunwear
Scenario: Goes to Sunwear category page
    When user clicks on menu option Sunglasses
    Then sees his category page