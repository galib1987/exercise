#require 'watir-webdriver'
require 'watir'
require 'rspec'
require 'rspec/expectations'  # additional
require 'page_helper'
require 'require_all'
require 'rubyXL'
#require 'saucelabs'
require 'nokogiri'
#require 'rubyzip'
#require 'sqlite3'
require 'saucelabs'
require 'rubygems'
require 'selenium-webdriver'
#require 'rautomation'
#require 'pretty_face'
#require  'allure-cucumber'

#require 'simplecov'
#require 'simplecov-rcov'
#require 'headless'
#require 'zip'
#require 'DataHelper'
# require 'Faker'
# require 'yaml'
# require 'open-uri'
require 'reuseable_functions'


# SimpleCov.formatters = [
#   SimpleCov::Formatter::HTMLFormatter,
#   SimpleCov::Formatter::RcovFormatter
# ]
#
# SimpleCov.start


# AllureCucumber.configure do |c|
#   c.output_dir = "C:/ELIS2_PageObject_Data_Driven_Framework1/Repots"
# end


require './lib/page_helper'
require './lib/data_helper'

require_all './lib/pages'


World PageHelper
World DataHelper

World ReuseableFunction

