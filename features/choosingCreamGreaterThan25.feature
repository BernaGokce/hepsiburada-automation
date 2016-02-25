Feature: Searching cream
  As a hepsiburada user
  I want to type cream in search field
  So that I view all creams

  Scenario: Login to hepsiburada web page
    Given I am at hepsiburada login page
    When I type username: "bernagokce@gmail.com" and password: "1cdscndf01"
    Then I am at hepsiburada page

    Scenario:Searching cream
      Given I am at homepage
      When I type search:"<cream>" in search field
      Then I am in filtered page

      Scenario: Choosing cream whose cost is bigger than 25
        Given I am at filtered page
        When I choose cream which are greater than 25
        Then I am in cream page

