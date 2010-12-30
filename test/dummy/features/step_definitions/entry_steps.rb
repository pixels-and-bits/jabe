Given /^a published entry$/ do
  Entry.make!(:published)
end

Given /^(\d+) entries$/ do |count|
  count.to_i.times do
    Entry.make!
  end
end

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
    And I should see "#{entry.body(:source)}"
  }
end

Then /^the entry should have (\d+) comments?$/ do |count|
  entry = @entry || Entry.last
  entry.comments.count.should eql(count.to_i)
end

Then /^I should see the entries in the feed$/ do
  doc = Nokogiri::XML(page.body)
  entries = doc.css('entry')

  Entry.published.paginate(
    :page => 1,
    :per_page => (SETTINGS.entries_per_page || 5)
  ).each_with_index do |entry, idx|
    entries[idx].css('title').text.should eql(entry.title)
    entries[idx].css('body').text.should eql(entry.body(:source))
  end
end
