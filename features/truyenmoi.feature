Feature: truyenmoi
  In order to do read lasted stories
  As an user
  I want to see lasted stories

  Scenario: Truyen Moi
    Given I am on home page
    Then I should see "Truyện Mới Cập Nhật"
    When I click "Truyện Mới Cập Nhật"
    Then I should see "Không bao giờ bỏ cuộc"
