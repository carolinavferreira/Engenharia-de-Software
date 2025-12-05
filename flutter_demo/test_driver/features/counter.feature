Feature: Counter
  The counter should be incremented/decremented when increment/decrement buttons are pressed.

  Scenario: Counter increases when the button is pressed (1)
    Given I expect the "counter" to be "0"
    When I tap the "increment" button
    And I tap the "increment" button
    Then I expect the "counter" to be "2"

  Scenario: Counter increases when the button is pressed (2)
    Given I expect the "counter" to be "0"
    When I tap the "increment" button 2 times
    Then I expect the "counter" to be "2"

  Scenario Outline: Counter increases when the button is pressed (3)
    Given I expect the "counter" to be "0"
    When I tap the "increment" button <number> times
    Then I expect the "counter" to be "<number>"

    Examples:
      | number |
      | 3      |
      | 10     |

  Scenario: Counter increases when the button is pressed (1)
    Given I expect the "counter" to be "0"
    When I tap the "increment" button
    Then I expect the "counter" to be "1"

  Scenario Outline: Counter may be incremented and decremented
    Given I expect the "counter" to be "0"
    When I tap the "increment" button <incr> times
    And I tap the "decrement" button <decr> times
    Then I expect the "counter" to be "<res>"

    Examples:
      | incr | decr | res |
      | 3    |  1   | 2   |
      | 3    |  2   | 1   |
      | 3    |  3   | 0   |

  Scenario: Counter may not be decremented below zero
    Given I expect the "counter" to be "0"
    When I tap the "decrement" button
    Then I expect the "counter" to be "0"


  Scenario: Counter may be incremented and decremented (2)
    Given I expect the "counter" to be "0"
    When I tap the "increment" button 3 times
    Then I expect the "counter" to be "3"
    When I tap the "decrement" button 2 times
    Then I expect the "counter" to be "1"
    When I tap the "decrement" button 2 times
    Then I expect the "counter" to be "0"
