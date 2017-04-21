Feature: things user can do
  In order to do things
  As an user
  I want to read stories and comment to stories

  Scenario: Truyen Moi
    Given I am on home page
    Then I should see "Truyện Mới Cập Nhật"
    When I click "Truyện Mới Cập Nhật"
    Then I should see "KHÔNG BAO GIỜ BỎ CUỘC"
