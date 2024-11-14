Feature: Search for pets by category

As a customer of the pet store
I need to search for a pet by category in the home page
So as I can be able to see the category of the pet that I am nterested in buying

Background: 
    Given the following pets
        |name  |category |available|
        |Fido  |dog      |True     |
        |Kitty |cat      |True     |
        |Leo   |lion     |False    |

Scenario: Search for dogs
    Given I am on the "Home page"
    Whene I enter "dog" into the “Category” field
    And I click the "Search" button
    Then I should see the message "Success"
    And I should see "Fido" in the results
    But I should not see "Kitty" because it's a cat
    And I should not see "Leo" beaacuse it's a lion
