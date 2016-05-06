When(/^I tap on Settings button$/) do
  $driver.find_element(name: "settings_button").click
end

When(/^I tap on Login button on Settings screen$/) do
  $driver.find_element(name: "Log in").click
end

Then(/^I type "(.*?)" to username field$/) do |username|
  $driver.find_element(name: "username_field").send_keys username
end

Then(/^I type "(.*?)" to password field$/) do |password|
  $driver.find_element(name: "password_field").send_keys password
end

When(/^I tap on Login button on Login screen$/) do
  $driver.find_element(name: "log_in_button").click
end


And(/^I should be signed in as user "([^"]*)"$/) do |username|
  text_from_device = $driver.find_element(class: "UIATableView").find_element(class: "UIAStaticText").text

  if text_from_device != "Logged in as #{username}"
    fail("Expecting to see #{username}, actual result #{text_from_device}")
  end
end