Before do
  $driver.start_driver
end

After do
  $driver.driver.quit
end