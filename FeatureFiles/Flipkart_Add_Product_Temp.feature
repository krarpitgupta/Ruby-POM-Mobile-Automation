########################################################################################################################
# Description : This is the Feature File of Login Workflow Of Salesforce Application
# Author : Xebia
# Start Date : 03 May 2017
# Modified Date : 04 May 2017
########################################################################################################################

Feature: test_android

  Background: User navigate to Salesforc Login Page
    Given I am on Salesforc login page

  Scenario: User should be able to logon on the application with valid credentials
    When I enter username as 'Xebia'
    And I enter password as 'Xebia'
    Then Login should failed error msg should be validated