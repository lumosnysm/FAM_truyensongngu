Feature: Truyen Co Tich
  In order to read a story
  As a user
  I want to select a story in the list stories

  Background:
    Given I am on "Truyện Cổ Tích" page
    And I should see list stories

  Scenario: Move mouse on a name story
    Given I move the mouse on "Tre và dương xỉ" story
    Then I should see "Tre và dương xỉ" story's color change
    And I should see "Tre và dương xỉ" underlined
    And I should see a part of "Tre và dương xỉ" story content

  Scenario: Move mouse on a picture of a story
    Given I on picture of "Tre và dương xỉ" story
    Then I should see a part of "Tre và dương xỉ" story's content

  Scenario: Click on a name story
    Given I on "Tre và dương xỉ" story
    When I click on the "Tre và dương xỉ"
    Then I should on "Tre và dương xỉ" story's content page

  Scenario: Click on a picture of a story
    Given I on picture of "Tre và dương xỉ" story
    When I click on picture of "Tre và dương xỉ" story
    Then I should on "Tre và dương xỉ" story's content page



