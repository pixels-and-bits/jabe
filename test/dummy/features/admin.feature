Feature: Site management

  Background:
    Given a logged in admin

  Scenario: An admin edits the site settings
    When I follow "Settings"
    And I fill in "settings_site_name" with "Pixels and Bits"
    And I press "Save"
    Then I should see "Pixels and Bits"
    And I should see "Settings updated"

  Scenario: An admin wants to add a new entry as a draft, then publish
    When I follow "Entries"
    And I follow "Start a new entry"
    And I fill in "entry_title" with "Is this thing on"
    And I fill in "entry_body" with "Hrm, Who knows"
    And I press "Save as draft"
    Then the entry should be a draft
    And I should see "Entry was saved as a draft."
    When I go to the home page
    Then I should not see the entry
    When I follow "Logout"
    And I go to the entry page
    Then the response should be a 404
    Given a logged in admin
    And I go to the admin home page
    And I follow "Entries"
    And I follow the title of the entry
    And I press "Publish"
    Then I should see "Entry was published"
    When I go to the home page
    Then I should see the entry

  Scenario: an admin requests a password reset
    When I follow "Settings"
    And I fill in "settings_host_name" with "sometestdomain.com"
    And I press "Save"
    And I follow "Logout"
    When I go to the admin home page
    And I follow "Forgot your password?"
    And I fill in "admin_email" with "admin@example.com"
    And I press "Send me reset password instructions"
    Then "admin@example.com" should receive an email
    When I open the email
    Then I should see "sometestdomain.com" in the email body
