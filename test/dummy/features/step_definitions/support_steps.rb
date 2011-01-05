Then /^the response should be a (\d+)$/ do |status|
  page.driver.response.status.should eql(status.to_i)
end

Then /^debug$/ do
  debugger
  true
end
