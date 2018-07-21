require 'fileutils'
require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'

class SearchPage

  def search_element()
    return $selenium_driver.find_element(:id,'com.flipkart.android:id/search_widget_textbox')
  end

  def editSearch_element()
    return $selenium_driver.find_element(:id,'com.flipkart.android:id/search_autoCompleteTextView')
  end

  def searchProduct(strProduct)
    searchBox = search_element
    searchBox.click
    editSearchBox = editSearch_element
    editSearchBox.send_keys(strProduct)
    $selenium_driver.action.send_keys("\n").perform
  end

end