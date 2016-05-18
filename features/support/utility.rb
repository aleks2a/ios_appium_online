class Utility
  def self.wait_for(timeout = 10, &block)
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until{yield}
  end
end