@search
Feature: Seach Products
    As customer 
    I want find Unique Vision Products 

    Background:
        Given I access Unique Vision Homepage

@search_paulina
Scenario: Search Paulina products
  When user searchs for products
  Then all products is displayed

@search_noprescription
Scenario: Search Paulina products
  When user searchs for products without prescription
  Then this product is displayed