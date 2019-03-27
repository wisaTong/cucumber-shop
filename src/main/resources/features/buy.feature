Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given a product Bread with price 20.50 and quantity 20 exists
    And a product Jam with price 80.00 and quantity 15 exists

Scenario: Buy one product
    When I buy Bread with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy Bread with quantity 2
    And I buy Jam with quantity 1
    Then total should be 121.00

Scenario: Buy more than in stock quantity
  When I buy Bread with quantity 21
  Then I can't buy the item


