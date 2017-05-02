Feature: Truyen Cuoi
  In order to read a story
  As a user
  I want to select a story in the list stories

  Background:
    Given I am on "Truyện Cười" page
    And I should see list stories

  Scenario: Move mouse on a name story
    Given I move the mouse on "CÒN THƯƠNG" story
    Then I should see "CÒN THƯƠNG" story's color change
    And I should see "CÒN THƯƠNG" underlined
    And I should see a part of "CÒN THƯƠNG" story content

  Scenario: Move mouse on a picture of a story
    Given I on picture of "CÒN THƯƠNG" story
    Then I should see a part of "CÒN THƯƠNG" story's content

  Scenario: Click on a name story
    Given I on "CÒN THƯƠNG" story
    When I click on the "CÒN THƯƠNG"
    Then I should on "CÒN THƯƠNG" story's content page

  Scenario: Click on a picture of a story
    Given I on picture of "CÒN THƯƠNG" story
    When I click on picture of "CÒN THƯONG" story
    Then I should on "CÒN THƯƠNG" story's content page



