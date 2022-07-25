require 'watir'
#require_relative './fast_selenium.rb'

username = "username"
accessToken = "accesskey"
gridUrl = "hub.lambdatest.com/wd/hub"
url = "https://" + username + ":" + accessToken + "@" + gridUrl
options = Selenium::WebDriver::Options.chrome
options.browser_version = "97.0"
options.platform_name = "Windows 10"
lt_options = {};
lt_options[:project] = "Untitled";
lt_options[:selenium_version] = "4.0.0";
lt_options[:geoLocation] = "IN";
lt_options[:w3c] = true;
lt_options[:plugin] = "ruby-ruby";
options.add_option('LT:Options', lt_options);
browser_name = ENV['BROWSER_NAME'] || 'chrome'
driver= Watir::Browser.new browser_name.to_sym, url: url, options: options

Before do |scenario|
  @browser = driver
end

at_exit do
  driver.quit
end

