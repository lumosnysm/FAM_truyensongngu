Given /^I am on home page$/ do
  visit root_path
end
Then(/^I should see "([^"]*)"$/) do |arg1|
page.should have_content(arg1)
end

When(/^I click "([^"]*)"$/) do |arg1|
click_on(arg1, match: :first)
end
