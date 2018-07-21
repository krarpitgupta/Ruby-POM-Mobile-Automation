########################################################################################################################
# Description : This is the Feature File of Login Workflow Of Salesforce Application
# Author : Xebia
# Start Date : 03 May 2017
# Modified Date : 04 May 2017
########################################################################################################################

Feature: Search And Select Product On Flipkart Native App on Android Platform

  Background: User have Android Device
    Given I launch the Flipkart App

  Scenario: User should be able to search for a Product
    When I type 'iPhone 6' in Search Box
    And I click on Search Functionality
    Then Related reults should display on screen