Feature: dangnhap
  In order to do sign in
  As an user
  I want to sign in

  Scenario: Dang Nhap
    Given I am on the login page
    When I fill in "EMAIL" with "vulong@email.com"
    When I fill in "PASSWORD" with "123456"
    When I click "ĐĂNG NHẬP"
    Then I should be on home page
