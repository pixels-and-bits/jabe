Given /^a logged in admin$/ do
  @admin = Admin.make!
  steps %Q{
    When I go to the admin home page
    And I fill in "admin_email" with "admin@example.com"
    And I fill in "admin_password" with "password"
    And I press "Sign in"
    Then I should be on the admin home page
  }
end

Then /^I should see the settings options$/ do
  pending # express the regexp above with the code you wish you had
end
