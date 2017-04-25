Feature: The story
  In order to read a story
  As a user
  I want to read and comment a story

  Scenario: View "Con nai ngu ngốc" page
    Given I am on "Con nai ngu ngốc" page
    Then I should see "Con nai ngu ngốc" story's information
    And I should see "Con nai ngu ngốc" story's content in VietNamese
    And I should see "Con nai ngu ngốc" story's content in English
    And I should see comment session
    And I should see sort button

    Scenario: View Comment
      Given I am on "Con nai ngu ngốc" page
      When I click sort button
      And I select "Mới nhất"
      Then I should see the newest comments
      When I select "Cũ nhất"
      Then I should see the oldest comments

      Scenario: Fill a comment
        Given I am on "Con nai ngu ngốc" page
        When I click comment session
        Then I should see my avatar facebook
        And I should see "Đăng" button
        And I should see "Cũng đăng lên facebook" checkbox

        Scenario: Save comment
          Given I am on "Con nai ngu ngốc" page
          When I click comment session
          And I fill in comment session with some word
          And I click "Đăng" button
          Then I should see my comment on "Con nai ngu ngốc" page


