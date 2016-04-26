When(/^I tap on Settings button$/) do
  puts "Tapping on Settings button"
end

When(/^I tap on Login button on Settings screen$/) do
  puts "Tapping on Login button"
end

Then(/^I type "(.*?)" to username field$/) do |username|
  puts username
end

Then(/^I type "(.*?)" to password field$/) do |password|
  puts password
end

When(/^I tap on Login button on Login screen$/) do
  puts "Tapping Login button on Login Screen"
end


And(/^I should be signed in as user "([^"]*)"$/) do |username|
  puts "I logged in as user #{username}"
end