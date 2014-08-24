Given(/^I open jugar$/) do
  visit '/jugar'
end

Given(/^I open jugar and I send "(.*?)"$/) do |palabra|
  visit '/jugar?palabra=' + palabra
end
