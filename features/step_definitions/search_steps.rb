And(/^I tap on skip button on welcome screen$/) do
  puts "Tap skip button"
end

When(/^I tap on Search button$/) do
  puts "Tap Search button"
end

When(/^I land on a Search screen$/) do
  $driver.find_element(name: "search_field")
  $driver.find_element(name: "close_button")
end

And(/^I type San Francisco in search field$/) do
  puts "Typing San Francisco into search field"
end

Then(/^I see (\d+)st result includes San Francisco$/) do |index|
  puts index
end

When(/^I type "(.*?)" in search field$/) do |search_term|
  $driver.find_element(name: "search_field").send_keys search_term
end

And(/^I press on Search icon on home screen$/) do
  $driver.find_element(name: "search_button").click
end


Then(/^I should see "([^"]*)" as 1st result$/) do |text|
  text_from_device = $driver.find_element(name: "search_results").find_element(class: "UIATableCell").find_element(class: "UIAStaticText").text
  # $driver.find_element(name: "search_results").find_element(class: "UIAStaticText")

  if text_from_device != text
    fail("Expected text: #{text}, actual text: #{text_from_device}")
  end
end

