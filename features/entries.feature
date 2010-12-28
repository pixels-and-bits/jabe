Feature: Interacting with entries

  Background:
    Given a published entry
    When I am on the home page
    And I follow the title of the entry
    Then I should see the entry

  Scenario: A human submits a comment
    When I fill in "comment_name" with "Michael"
    And I fill in "comment_email" with "michael@example.com"
    And I fill in "comment_body" with "Cool post"
    And I press "Add comment"
    Then I should see "Michael"
    And I should see "Cool post"
    And the entry should have 1 comment

  Scenario: A bot submits a comment
    When I fill in "comment_name" with "v1@gr@"
    And I fill in "comment_nickname" with "blue pill"
    And I fill in "comment_email" with "spambot@example.com"
    And I fill in "comment_body" with "take the blue pill"
    And I press "Add comment"
    Then the entry should have 0 comments
