Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given a product Bread with price 20.50 and 100 pieces exists
    And a product Jam with price 80.00 and 50 pieces exists

Scenario: Buy one product
    When I buy Bread with quantity 2
    Then the total should be 41.00
    Then the Bread total stock should be 98, manager not fulfill the stock

Scenario: Buy multiple products
    When I buy Bread with quantity 2
    And I buy Jam with quantity 1
    Then the total should be 121.00
    Then the Bread total stock should be 98, manager not fulfill the stock
    And the Jam total stock should be 49, manager not fulfill the stock

Scenario: Buy negative product
    When I buy Bread with quantity -9
    Then the total should be 0
    Then the Bread total stock should be 100, manager not fulfill the stock

Scenario: Buy not enough product
    When I buy Jam with quantity 100
    Then the total should be 0
    Then the Jam total stock should be 50, manager not fulfill the stock

Scenario: Run out of stock
    When I buy Bread with quantity 100
    Then the total should be 2050.00
    Then the Bread total stock should be 0, manager fulfill the stock

