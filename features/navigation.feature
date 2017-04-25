Feature: Navigation
  In order to move between pages
  As a user
  I want to move from home page to other pages

  Background:
    Given I am on home page
    And I should see "Trang Chủ" on the navigation
    And I should see "Truyện Mới Cập Nhật" on the navigation
    And I should see "Tất Cả Các Truyện" on the navigation
    And I should see "Thể Loại" on the navigation
    And I should see "Đăng Nhập" button on the navigation
    And I should see "Truyện Song Ngữ" label on the navigation
    And I should see "Tìm Truyện" button on the navigation
    And I should see search box

  Scenario: Go to "Truyện Mới Cập Nhật" page
    When I click "Truyện Mới Cập Nhật"
    Then I should be on "Truyện Mới Cập Nhật" page
    And I should see "Truyện Mới Cập Nhật" page

  Scenario: Go to "Tất Cả Các Truyện" page
    When I click "Tất Cả Các Truyện"
    Then I should be on "Tất Cả Các Truyện" page
    And I should see "Tất Cả Các Truyện" page

  Scenario: View "Thể Loại"
    When I click "Thể Loại"
    Then I should see "Truyện Ngắn" option
    And I should see "Truyện Cổ Tích " option
    And I should see "Truyện Ngụ Ngôn" option
    And I should see "Truyện Cười" option

  Scenario: Go to "Truyện Ngắn"
    When I click "Thể Loại"
    And I click "Truyện Ngắn"
    Then I should be on "Truyện Ngắn" page
    And I should see "Truyện Ngắn" page

  Scenario: Go to "Truyện Ngụ Ngôn"
    When I click "Thể Loại"
    And I click "Truyện Ngụ Ngôn"
    Then I should be on "Truyện Ngụ Ngôn" page
    And I should see "Truyện Ngụ Ngôn" page

  Scenario: Go to "Truyện Cười"
    When I click "Thể Loại"
    And I click "Truyện Cười"
    Then I should be on "Truyện Cười" page
    And I should see "Truyện Cười" page

  Scenario: Go to "Truyện Cổ Tích"
    When I click "Thể Loại"
    And I click "Truyện Cổ Tích"
    Then I should be on "Truyện Cổ Tích" page
    And I should see "Truyện Cổ Tích" page

  Scenario: Login
    When I click "Đăng Nhập" button
    Then I should be on "Login" page

  Scenario: Search a story
    When I fill in search box with "Còn Thương"
    And I click "Tìm Truyện" button
    Then I should be on search page
    And I should see "CÒN THƯƠNG" story's infomation






