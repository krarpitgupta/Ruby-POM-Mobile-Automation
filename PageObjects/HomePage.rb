require 'fileutils'
require 'selenium-webdriver'
require 'rubygems'
require 'appium_lib'

class HomePage

  def closeImage_element()
    return $selenium_driver.find_element(:id,'com.flipkart.android:id/btn_skip')
  end

  def handleImage()
    imageElement = closeImage_element
    imageElement.click
  end

  def launchMobileApplication(strAppPath)

    def server_url
      "http://127.0.0.1:4723/wd/hub"
    end

    desired_caps = {
        caps:  {
            platformName:'Android',
            platformVersion:'6.0.1',
            deviceName:'ZX1G429MDC',
            browserName:'',
            app:strAppPath,
        }
    }

    @appium_driver = Appium::Driver.new(desired_caps)
    $selenium_driver = @appium_driver.start_driver
    $selenium_driver.manage.timeouts.implicit_wait = 10

  end

end
