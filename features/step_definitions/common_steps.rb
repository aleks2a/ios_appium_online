When(/^I land on a Settings screen$/) do
  $driver.find_element(name: "close")
  $driver.find_element(name: "Settings")
end

Then(/^I land on a Home screen$/) do
  $driver.find_element(name: "settings")
  $driver.find_element(name: "search")
end

Then(/^I land on a Login screen$/) do
  $driver.find_element(name: "username_field")
  $driver.find_element(name: "password_field")
end

Given(/^I land on Welcome screen$/) do
  $driver.find_element(name: "ftux-telescope-base")
end

Then(/^I press on Get Started button on Welcome screen$/) do
  $driver.find_element(name: "GET STARTED").click
end

And(/^I press on Continue button$/) do
  $driver.find_element(name: "CONTINUE").click
end