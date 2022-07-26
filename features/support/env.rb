require 'watir'
#require_relative './fast_selenium.rb'
require 'axe/cucumber/step_definitions'

String username = ENV['LT_USERNAME']
String accessToken = ENV['LT_ACCESS_KEY']
#String gridUrl = "hub.lambdatest.com/wd/hub"
String url = "https://hub.lambdatest.com/wd/hub"
options = Selenium::WebDriver::Options.chrome
options.browser_version = "97.0"
options.platform_name = "Windows 10"
lt_options = {};
lt_options[:project] = "Untitled";
lt_options[:selenium_version] = "4.0.0";
lt_options[:geoLocation] = "IN";
lt_options[:w3c] = true;
lt_options[:username] = ENV['LT_USERNAME'];
lt_options[:accessKey] = ENV['LT_ACCESS_KEY'];
lt_options[:plugin] = "ruby-ruby";
options.add_option('LT:Options', lt_options);
browser_name = ENV['BROWSER_NAME'] || 'chrome'
driver= Watir::Browser.new browser_name.to_sym, url: url, options: options

Axe.configure do |c|
  c.page = :driver

  # axe-matchers can also be given the actual browser/page instance if it's available
  #   c.page = @page
end

Before do |scenario|
  @page = driver
end

at_exit do
  driver.quit
end

