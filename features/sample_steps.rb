Given(/^I am a visitor$/) do
end

When(/^I visit "(.*?)"$/) do |url|
  @page.goto url
  @page.link(:text => "Click Here").click
  @page.windows.wait_until(size: 2)
  @page.window(:title => "New Window").close
  
end

