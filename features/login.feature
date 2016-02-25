Feature: hepsiburada Demo

  As a hepsiburada user
  I want to type my username and password
  So that I login to system


  Scenario: Login to hepsiburada web page
    Given I am at hepsiburada login page
    When I type username: "<username>" and password: "<password>"
    Then I am at hepsiburada page