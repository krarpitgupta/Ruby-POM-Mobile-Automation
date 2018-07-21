########################################################################################################################
# Description : This file contains the objects of page of AUT
# Author : Xebia
# Start Date : 03 May 2017
# Modified Date : 04 May 2017
########################################################################################################################

require 'fileutils'
require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'

def launchMobileApplication(strAppPath)

  def server_url
    "http://127.0.0.1:4723/wd/hub"
  end

  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '6.0.1',
          deviceName:    'ZX1G429MDC',
          browserName:   '',
          app:strAppPath,
      }
  }

  @appium_driver = Appium::Driver.new(desired_caps)
  @selenium_driver = @appium_driver.start_driver
  sleep(5)
  @selenium_driver.manage.timeouts.implicit_wait = 10
  #@driver.start_driver.manage.timeouts.implicit_wait = 10
  @selenium_driver.find_element(:id,'com.flipkart.android:id/btn_skip').click

end

def searchProduct(product)
  #sleep(2)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/search_widget_textbox').click
  #sleep(1)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/search_autoCompleteTextView').send_keys(product)
  @selenium_driver.action.send_keys("\n").perform
  #sleep(3)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/not_now_button').click
  #sleep(2)
  @selenium_driver.find_element(:class,'android.view.ViewGroup').click
  #sleep(2)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/product_buynow_1').click
  #sleep(2)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/mobileNo').send_keys('8882666876')
  #sleep(2)
  @selenium_driver.find_element(:id,'com.flipkart.android:id/btn_msignup').click

  actualMsgg = @selenium_driver.find_element(:id,'com.flipkart.android:id/error_text').text

  actualMsg = actualMsgg.text
  printf('%s',actualMsg)
  if actualMsg == "Invalid email/mobile"
    puts "verification done"
  else
    puts "Warning ! Please do check "
  end
  #@appium_driver.driver_quit
end




