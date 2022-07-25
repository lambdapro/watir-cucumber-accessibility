require 'axe-cucumber-steps'
Given /^I am on (.+)$/ do |url|
  @browser.goto "http://www.google.com"
end
 
When /^I fill in "([^"]*)" found by "([^"]*)" with "([^"]*)"$/ do |value, type, keys|
  @browser.text_field(:name => value).set(keys)
end
 
When /^I submit$/ do
  @browser.send_keys :enter
end
 
Then /^I should see title "([^"]*)"$/ do |title|
  raise "Fail" if @browser.title != title
end


