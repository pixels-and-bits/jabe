When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I select "([^"]*)" from "([^"]*)"$/ do |option, collection|
  select option, :form => collection
end

When /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^"]*)"$/ do |text|
  page.has_content?(text)
end

Then /^show me the page$/ do
  save_and_open_page
end

When /^I go to the blog homepage$/ do
  visit '/jabe'
end
