Feature: dangnhap
  In order to do sign in
  As an user
  I want to sign in

  Scenario: Dang Nhap
    Given I am on the login page
    When I fill in "EMAIL" with "vuhoanglong@email.com"
    When I fill in "PASSWORD" with "1"
    When I click "Đăng nhập"
    Then I should be on home page
