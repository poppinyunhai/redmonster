# encoding: utf-8
Given /^an advertisement exists with title: (.*)$/ do |title|
  FactoryGirl.create(:advertisement, :title => title)
end

When /^I provide new ad title with: (.*)$/ do |title|
  fill_in "advertisement[title]", :with => title
  click_button '保存'
end
