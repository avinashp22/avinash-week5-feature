Feature: Demo Nopcommerce's Top menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce Top Menu

  Background: User is on given URL
    When  User types URL https://demo.nopcommerce.com in browser
    And   User presses on Enter button
    Then  User is on given website page

  Scenario: Verify that user can navigate to Books Category
      When User Clicks on Books Tab on top menu   # background already applies so next step is to click on books
      Then User is taken to Books Category Page

  Scenario: Verify that user can see the Books category page with filters and list of products
      When User clicks on Books tab menu          # background already applies so next step is to click on books
      And  Checks the filters and list tab
      Then Books category is displayed with filters and list tabs

  Scenario: Verify that user can see "Sort by" filter on Books Category page
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   User checks the "sort by" filter is present
      Then  "Sort by" filter is available on books category page

  Scenario: Verify that user can see "Display" filter on Books Category page
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   User checks the "Display" filter is present
      Then  "Display" filter is available on books category page

  Scenario: Verify that user can see "Grid" filter on Books Category page
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   User checks the "Grid" filter is present
      Then  "Grid" filter is available on Books category page

  Scenario: Verify that user can see "List" filter on Books Category page
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   User checks the "List" filter is present
      Then  "List" filter is available on Books category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   Click on 'Sort by' Filter
      And   Check that 'Name: A to Z' selection is present
      Then  'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in  'Sort by' filter
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   Click on 'Sort by' filter
      And   Check that 'Name: A to Z' is first in order
      Then  'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is  functioning as expected (Products are filtered in alphabetical order)
      Given User clicks on Books tab menu         # background is user is on homepage,so to get to books click books tab
      When  User is on Books Category page
      And   Click on 'Sort by' filter
      And   Select 'Name: A to Z' filter
      Then  All products are displayed in alphabetical order