Feature: Home
  In order to find a story
  As a user
  I want to select a story

  Scenario: Introduce about "Truyện Song Ngữ"
    Given I am on home page
    Then I should see introduce about "Truyện Song Ngữ"
    And I should see navigation
    And I should see "Truyện Song Ngữ Anh-Việt"
    And I should see a picture
    And I should see all kind of stories

    Scenario: Stories in home page
      Given I am on home page
      When I scroll home page
      Then I should see the new stories
      And I should see the pictures of the stories
      And I should see FAM team's information

      Scenario: View the stories
        Given I am on home page
        When I click arrow left
        Then I should see the stories move from right to left
        When I click arrow right
        Then I should see the stories move from left to right

        Scenario: Move mouse to "1. Truyện Ngắn"
          Given I am on home page
          When I move mouse on the "1. Truyện Ngắn"
          Then I should see "1. Truyện Ngắn" change color
          And I should see "1. Truyện Ngắn" underlined

  Scenario: Move mouse to "2. Truyện Ngụ Ngôn"
    Given I am on home page
    When I move mouse on the "2. Truyện Ngụ Ngôn"
    Then I should see "2. Truyện Ngụ Ngôn" change color
    And I should see "2. Truyện Ngụ Ngôn" underlined

  Scenario: Move mouse to "3. Truyện Cổ Tích"
    Given I am on home page
    When I move mouse on the "3. Truyện Cổ Tích"
    Then I should see "3. Truyện Cổ Tích" change color
    And I should see "3. Truyện Cổ Tích" underlined

  Scenario: Move mouse to "4. Truyện Cười"
    Given I am on home page
    When I move mouse on the "4. Truyện Cười"
    Then I should see "4. Truyện Cười" change color
    And I should see "4. Truyện Cười" underlined


    Scenario: Select "Truyện Ngắn"
      Given I am on home page
      When I click on the "1. Truyện Ngắn"
      Then I should be on "Truyện Ngắn" page

  Scenario: Select "Truyện Ngụ Ngôn"
    Given I am on home page
    When I click on the "2. Truyện Ngụ Ngôn"
    Then I should be on "Truyện Ngụ Ngôn" page

  Scenario: Select "Truyện Ngắn"
    Given I am on home page
    When I click on the "3. Truyện Cổ Tích"
    Then I should be on "Truyện Cổ Tích" page

  Scenario: Select "Truyện Cười"
    Given I am on home page
    When I click on the "4. Truyện Cười"
    Then I should be on "Truyện Cười" page
