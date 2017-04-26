Feature: truyenmoi
  In order to do read lasted stories
  As an user
  I want to see lasted stories

  Scenario: Truyen Moi
    Given I am on home page
    Then I should see "Truyện Mới Cập Nhật"
    When I click "Truyện Mới Cập Nhật"
    Then I should see "Trái tim"

  Scenario: Move mouse on a name story
    Given I am on "Truyện Mới Cập Nhật" page
    When I move the mouse on "Tre và dương xỉ" story
    Then I should see "Tre và dương xỉ" story's color change
    And I should see "Tre và dương xỉ" underlined
    And I should see a part of "Tre và dương xỉ" story content

  Scenario: Move mouse on a picture of a story
    Given I am on "Truyện Mới Cập Nhật" page
    When I move the mouse on picture of "Tre và dương xỉ" story
    Then I should see a part of "Tre và dương xỉ" story's content

  Scenario: Click on a name story
    Given I am on "Truyện Mới Cập Nhật" page
    When I click on the "Tre và dương xỉ"
    Then I should on "Tre và dương xỉ" story's content page

  Scenario: Click on a picture of a story
    Given I am on "Truyện Mới Cập Nhật" page
    When I click on picture of "Tre và dương xỉ" story
    Then I should on "Tre và dương xỉ" story's content page
