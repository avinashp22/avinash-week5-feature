Feature: Book Category

  Background: I should be able to see Homepage
    Given  I enter URL" https://demo.nopcommerce.com/" in browser
    And    I am on the Homepage

  Scenario Outline: I should be able to see the top menu tabs on the Homepage with categories
    When   I am on the Homepage
    Then   I should be able to see the menu tabs with "<Categories>"

    Examples:
      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Cards        |

  Scenario Outline: I should be able to see Book page with filters
    When   I select Book category from top menu tabs on Homepage
    Then   I should be navigated to the Book category page
    And    I should be able to see "<Filters>"

    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | Grid     |
      | List     |

  Scenario Outline: I should be able to see the list of terms for each filter
    Given  I am on Book Page
    When   When I click on "<Filter>"
    Then   I should be able to see the "<List>" in dropdown

    Examples:
      | Filter  | List                                                                          |
      | Sort By | Name: Ato z,name : Z to A, Price :Low to High, Price : High to Low,Created on |
      | Display | 3 ,6, 9                                                                       |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given  I am on Book page
    When   I click on "<filter>"
    And    I click on any "<option>"
    Then   I should be able to choose any filter option from the list
    And    I should be able to see  "<result>"

    Examples:
      | filter  | option            | result                                                            |
      | Sort by | Name:A to Z       | sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name:Z to A       | sorted product with the product name in alphabetical order Z to A |
      | Sort by | price:low to high | sorted product with the price in descending order                 |
      | Sort by | price:High to low | sorted product  with the price in ascending order                 |
      | Sort by | Created on        | Recently added  product should be show first                      |
      | Display | 3                 | 3 products in a page                                              |
      | Display | 6                 | 6 products in a page                                              |
      | Display | 9                 | 9 products in a page                                              |

  Scenario Outline: I should be able to see product display format according to display format type as per picture provided
    Given  I am on Book page
    When   I Click on "<display format icon>"
    And    I should be able to see the products displayed in a format as per picture provided

    Examples:
      | display format icon |
      | Grid                |
      | List                |
