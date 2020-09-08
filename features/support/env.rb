# require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'yaml'
require 'ffi'
require 'faker'
require 'cpf_faker'
require 'site_prism'
require 'pry'


DATA = YAML.load_file("features/fixtures/data.yml")
MESSAGE_ASSERT = YAML.load_file("features/fixtures/messages.yml")
DATA_PRODUCTS = YAML.load_file("features/fixtures/products.yml")

$base_url = ENV["ENVIRONMENT"]#.sub("https://", "")

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  Capybara.register_driver :selenium_chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
      options.add_argument "allow-insecure-localhost"  # Ignore TLS/SSL errors on localhost
      options.add_argument "ignore-certificate-errors" # Ignore certificate related errors
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
      options.add_argument('allow-insecure-localhost')  # Ignore TLS/SSL errors on localhost
      options.add_argument('ignore-certificate-errors') # Ignore certificate related errors
      options.add_argument "--disable-dev-shm-usage"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end


def wait_for_ajax
  Timeout.timeout(Capybara.default_max_wait_time) do
    loop do
      active = page.evaluate_script('jQuery.active')
      break if active == 0
    end
  end
end

Capybara.configure do |c|
  c.default_driver = @driver
  c.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
  # c.app_host = 'https://uniquevision:9002/pe' #DEV
  c.app_host = "#{$base_url}"
end