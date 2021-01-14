require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://try.discourse.org"
end

# page.driver.browser.manage.window.resize_to(1920, 1080)