Given /^I am on home page$/ do
  visit root_path
end
Given(/^I am on the login page$/) do
  visit login_path
end
Then(/^I should see "([^"]*)"$/) do |arg1|
page.should have_content(arg1)
end

When(/^I click "([^"]*)"$/) do |arg1|
click_on(arg1, match: :first)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1.gsub(' ', '_'), :with => arg2)
end
Then /^I should be on home page$/ do
    visit root_path
end
