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
  sleep 2
  $driver.find_element(name: "search_field").send_keys search_term
end

And(/^I press on Search icon on home screen$/) do
  $driver.find_element(name: "search_button").click
end

Then(/^I should see "([^"]*)" as (\d+)st result$/) do |text, number|
  text_from_device =
      $driver.find_element(name: "search_results").find_elements(class: "UIATableCell")[number.to_i - 1].find_element(class: "UIAStaticText").text
  # $driver.find_element(name: "search_results").find_element(class: "UIAStaticText")

  if text_from_device != text
    fail("Expected text: #{text}, actual text: #{text_from_device}")
  end
end


Then(/^I should see at least (\d+) results on search result screen$/) do |number|
  # $driver.find_element(name: "search_results").find_elements(class: "UIATableCell")[2].click

  array =
      $driver.find_element(name: "search_results").find_elements(class: "UIATableCell")
  if array.size < number.to_i
    fail("Expected to see at least #{number} results")
  end


end

And(/^I tap on (\d+)(?:st|nd|rd|th)? result$/) do |cell|
  $driver.find_element(name: "search_results").find_elements(class: "UIATableCell")[cell.to_i - 1].click
end

And(/^I verify that article title includes "([^"]*)"$/) do |expected_result|
  actual_result =
      $driver.find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAWebView[1]/UIAStaticText[1]").text
  fail ("Can not find #{expected_result}") unless actual_result == expected_result
end

Then(/^I can see "([^"]*)" in recent history$/) do |most_recent_term|
  puts $driver.find_element(class: "UIATableView").find_elements(class: "UIATableCell")[0].attribute(:name)
end