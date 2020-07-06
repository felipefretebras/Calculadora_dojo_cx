# frozen_string_literal: true

require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'
require 'pry'

def caps
  { caps: { deviceName: 'Nexus4',
            platformName: 'Android10',
            automationName: 'UiAutomator2',
            app: File.join(File.dirname(__FILE__), 'calculator.apk') } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { start_driver }
After { driver_quit }
