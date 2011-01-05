Feature: Interacting with entries

  Background:
    Given an admin
    And a published entry
    When I am on the home page
    And I follow the title of the entry
    Then I should see the entry

  Scenario: A human submits a comment
    When I fill in "comment_name" with "Michael"
    And I fill in "comment_email" with "michael@example.com"
    And I fill in "comment_url" with "http://foo.example.com/"
    And I fill in "comment_body" with "Cool post"
    And I press "Add comment"
    Then I should see "Michael"
    And I should see "Cool post"
    And the entry should have 1 comment
    And the page should not contain "Are you sure"
    And "admin@example.com" should receive an email
    When I open the email
    Then I should see "Michael" in the email body
    Then I should see "michael@example.com" in the email body
    Then I should see "foo.example.com" in the email body
    Then I should see "Cool post" in the email body
    When a logged in admin
    And I am on the home page
    And I follow the title of the entry
    Then the page should contain "Are you sure"

  Scenario: A bot submits a comment
    When I fill in "comment_name" with "v1@gr@"
    And I fill in "comment_nickname" with "blue pill"
    And I fill in "comment_email" with "spambot@example.com"
    And I fill in "comment_body" with "take the blue pill"
    And I press "Add comment"
    Then the entry should have 0 comments
