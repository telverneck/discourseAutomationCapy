require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
    config.app_host = "https://try.discourse.org"
    config.default_max_wait_time = 10
end

# page.driver.browser.manage.window.resize_to(1920, 1080)