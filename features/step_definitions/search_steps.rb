And(/^I tap on skip button on welcome screen$/) do
  puts "Tap skip button"
end

When(/^I tap on Search button$/) do
  puts "Tap Search button"
end

When(/^I land on a Search screen$/) do
  puts "I am on a Search screen"
end

And(/^I type San Francisco in search field$/) do
  puts "Typing San Francisco into search field"
end

Then(/^I see (\d+)st result includes San Francisco$/) do |index|
  puts index
end

When(/^I type "(.*?)" in search field$/) do |search_term|
  puts search_term
end