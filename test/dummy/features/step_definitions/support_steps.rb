Then /^the response should be a (\d+)$/ do |status|
  page.driver.response.status.should eql(status.to_i)
end

Then /^debug$/ do
  debugger
  true
end

Then /^the page should contain "([^"]*)"$/ do |string|
  page.body.match(/#{string}/).should_not be_nil
end

Then /^the page should not contain "([^"]*)"$/ do |string|
  page.body.match(/#{string}/).should be_nil
end
