Given /^I open the web app$/ do
  visit '/'
end

Given /^I open link configurar juego$/ do
  visit '/configurar_juego'
end

When /^I click on "(.*)"$/ do |text|
  click_link(text)
end

When /^I select "(.*)"$/ do |text|
  select(text)
end

Then /^I should see "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^I fill "(.*)" with "(.*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*)"$/ do |name|
  click_button(name)
end

When /^the "([^"]*)" image should load$/ do |img|
	
  last_response.body.should =~ /#{img}/m
end

