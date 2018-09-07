Feature: Sorted results

As a ebay user
I want to see the filtered, sorted results
So that i can buy the best prodcut

Background:
Given I am a non-registered customer
When I navigate to the "www.ebay.co.uk"
And  I enter the item name in the search box

@smoke
Scenario: Search filtered results

@smoke @regression
Scenario: Search unfiltered results

@regression
Scenario Outline: Search sorted results
Given I am in results page
When i choose "sort type"
Then i should have my url with the "content"
Examples:
|sort type|content|
|Lowest Price|sop=3|
|Hghest Price|sop=1|


  @001
  Scenario: Search and verify results
    Given I am a non-registered customer
    And I navigate to www.ebay.co.uk
    When I search for an item
    Then I get a list of matching results
    And the resulting items cards show: postage price, No of bids, price or show BuyItNow tag
    Then I can sort the results by Lowest Price
    And the results are listed in the page in the correct order
    Then I can sort the results by Highest Price
    And the results are listed in the page in the correct order
    Then I can filter the results by 'Buy it now'
    And all the results shown in the page have the 'Buy it now' tag
    
  @002
  Scenario: Search per category
    Given I am a non-registered customer
    And I navigate to www.ebay.co.uk
    When I enter a search term and select a specific Category
    Then I get a list of matching results
    And I can verify that the results shown as per the the selected category

  @003
  Scenario: Search and navigate through results pages
    Given I am a non-registered customer
    And I navigate to www.ebay.co.uk
    When I search for an item
    Then I get a list of matching results
    And the results show more than one page
    Then the user can navigate through the pages to continue looking at the items
