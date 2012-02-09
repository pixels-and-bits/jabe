Feature: Admin feature
  In order to manage the site
  As an admin
  I want to change settings and post entries

  Scenario: Using the admin features
    Given a logged in admin
    When I go to the admin settings page
    And I fill in "Site name" with "This is my blog"
    And I fill in "Tagline" with "ramblings and such"
    And I fill in "Sidebar heading" with "Here and there"
    And I fill in "Github" with "UnderpantsGnome"
    And I fill in "Twitter" with "UnderpantsGnome"
    And I fill in "Facebook" with "UnderpantsGnome"
    And I fill in "Google tracker" with "google_tracker_id"
    And I select "Central Time (US & Canada)" from "Your local time zone"
    And I press "Save"

    When I go to the blog homepage
    Then I should see "This is my blog"
    And I should see "ramblings and such"
    And I should see "Here and there"
    And I should see "Github"
    And I should see "Twitter"
    And I should see "Facebook"
    And I should see "JABE.load_gat"
