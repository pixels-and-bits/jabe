Feature: Interacting with entries

  Background:
    Given a published entry
    When I am on the home page
    And I follow the title of the entry
    Then I should see the entry
    When I fill in "comment_name" with "Michael"
    And I fill in "comment_email" with "michael@example.com"
    And I fill in "comment_body" with "Cool post"
    And I press "Add comment"
    Then I should see "Michael"
    And I should see "Cool post"
