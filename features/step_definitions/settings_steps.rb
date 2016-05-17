Then(/^I press on Show lanquages on search toggle$/) do
  # $driver.find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[4]/UIASwitch[1]")
  # $driver.find_element(xpath: "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[4]/UIASwitch[1]")
  $driver.find_element(name: "Show languages on search").find_element(class: "UIASwitch").click
end


And(/^I verify that Show lanquages on search toggle is (on|off)$/) do |state|
  puts actual_state = $driver.find_element(name: "Show languages on search").find_element(class: "UIASwitch").attribute("value")
  actual_state = $driver.find_element(name: "Show languages on search").find_element(class: "UIASwitch").attribute(:value)
  if state == "on"
    fail("Expecting toggle to be off") if actual_state == 0
  elsif state == "off"
    fail("Expecting toggle to be off") if actual_state == 1
  end
end

Then(/^I tap on Privacy policy$/) do
  $driver.find_element(:name, "Privacy policy").click
end

And(/^I land on Privacy policy web page$/) do
  context = "WEBVIEW_1"
  # add pry to find context
  binding.pry
  Utility.wait_for{$driver.available_contexts.include?("#{context}")}
  $driver.set_context context
  fail "Did not land on Privacy Screen" unless
      $driver.find_element(:id, "section_0").text == "Privacy policy"
end