require 'cucumber'
require 'appium_lib'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "wikipedia.zip")
DEFAULT_TIMEOUT = 20

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || "iPhone 6"),
                  platformName: 'iOS',
                  platformVersion: (ENV['SDK'] || '9.3'),
                  app: APP_PATH,
                  bundleId: 'org.wikimedia.wikipedia.developer',
                  locationServicesEnabled: true,
                  locationServicesAuthorized: true,
                  newCommandTimeout: '36000'},
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end

Appium::Driver.new(caps)
