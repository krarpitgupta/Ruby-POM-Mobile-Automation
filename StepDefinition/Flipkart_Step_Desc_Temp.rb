########################################################################################################################
# Description : This file contains the Step Description and it's mapping to Feature File
# Author : Xebia
# Start Date : 03 May 2017
# Modified Date : 04 May 2017
########################################################################################################################
require 'selenium-webdriver'
require_relative 'C:\Users\arpitgupta\RubymineProjects\MobileAutomation\PageObjects\HomePage.rb'
require_relative 'C:\Users\arpitgupta\RubymineProjects\MobileAutomation\PageObjects\SearchPage.rb'

objHome = HomePage.new
objSearch = SearchPage.new
$selenium_driver

Given(/^I launch the Flipkart App$/) do
  objHome.launchMobileApplication('C:\Users\arpitgupta\RubymineProjects\MobileAutomation\Application\flipkart-5-6.apk')
  objHome.handleImage
end

When(/^I type 'iPhone 6' in Search Box$/) do
  objSearch.searchProduct('iPhone 6')
end

When(/^I click on Search Functionality$/) do

end

Then(/^Related reults should display on screen$/) do

end
