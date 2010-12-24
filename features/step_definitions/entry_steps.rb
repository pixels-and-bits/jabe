Then /^the entry should be a draft$/ do
  entry = @entry || Entry.last
  entry.draft.should be_true
end

Then /^I should not see the entry$/ do
  entry = @entry || Entry.last
  steps %Q{
    And I should not see "#{entry.title}"
  }
end

When /^I follow the title of the entry$/ do
  entry = @entry || Entry.last
  steps %Q{
    And I follow "#{entry.title}"
  }
end

Then /^I should see the entry$/ do
  entry = @entry || Entry.last
  steps %Q{
    And I should see "#{entry.title}"
    And I should see "#{entry.body}"
  }
end