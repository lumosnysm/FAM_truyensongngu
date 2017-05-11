Feature: truyenmoi
  In order to do read lasted stories
  As an user
  I want to see lasted stories

  Scenario: Truyen Moi
    Given I am on home page
    Then I should see "Truyện mới"
    When I click "Truyện mới"
    Then I should see "KHÔNG BAO GIỜ BỎ CUỘC"
