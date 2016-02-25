Feature: Searching cream
  As a hepsiburada user
  I want to type cream in search field
  So that I view all creams

  Scenario: Login to hepsiburada web page
    Given I am at hepsiburada login page
    When I type username: "bernagokce@gmail.com" and password: "12sdsf01"
    Then I am at hepsiburada page

    Scenario:Searching cream
      Given I am at homepage
      When I type search:"<cream>" in search field
      Then I am in filtered page

      Scenario:Choosing cream
        Given I am at filtered page
        When I choose cream in page
        Then I am in this cream page

        Scenario:Adding cream to Sepetim
          Given I am at the chosen product webpage
          When I click SepeteEkle button
          Then I am in Sepetim page



