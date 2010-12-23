Feature: Site management

  Background:
    Given a logged in admin

  Scenario: An admin edits the site settings
    When I follow "Settings"
    And I fill in "settings_site_name" with "Pixels and Bits"
    And I press "Save"
    Then I should see "Pixels and Bits"