#Author: MOKLASUR RAHMAN
#Date:07/11/2016
include SauceLabs
include ReuseableFunction

# Before do
#
#   ENV['BROWSER'] ||= "chrome"
#   ENV['WHERE'] ||= "local"
#   if(ENV['WHERE']=="remote")
#     @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://localhost:4444/wd/hub"})
#   else
#     # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)
#     require 'win32ole'
#     wmi = WIN32OLE.connect("winmgmts://")
#     processes = wmi.ExecQuery("select * from win32_process")
#     ar = processes.each.with_object([]) {|i,a| a << i.name }
#     @bName = ENV['BROWSER']
#     case @bName
#       when 'ff'
#         if ar.include? "firefox.exe"
#           system("taskkill /t /f /im firefox.exe")
#         end
#         @browser = Watir::Browser.new ENV['BROWSER'].to_sym
#       when 'ie'
#         if ar.include? "iexplore.exe"
#           system("taskkill /t /f /im iexplore.exe")
#         end
#         @browser = Watir::Browser.new ENV['BROWSER'].to_sym
#       when 'chrome'
#         if ar.include? "chrome.exe"
#           system("taskkill /t /f /im chrome.exe")
#         end
#         @browser = Watir::Browser.new ENV['BROWSER'].to_sym,:switches => %w[--disable-extensions  --ignore-certificate-errors --disable-popup-blocking --disable-translate]
#       when nil
#         break
#     end
#     # @browser = Watir::Browser.new ENV['BROWSER'].to_sym
#   end
#   @browser.window.maximize
# end


Before do


    ENV['BROWSER'] ||= "chrome"
    ENV['WHERE'] ||= "local"

    if(ENV['WHERE']=="remote")
      # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://mrahman1:55a94ff3-c894-4211-a918-67047d2da2ef@localhost:4444/wd/hub"})
      @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://sgrahman:363648ef-2b14-4e4d-a137-1cb8792bcb0f@ondemand.saucelabs.com:443/wd/hub"})
      #@browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://mrahman1:55a94ff3-c894-4211-a918-67047d2da2ef@ondemand.saucelabs.com:443/wd/hub"})
    else
      # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)

      if(ENV['BROWSER']== "chrome")
        @browser = Watir::Browser.new ENV['BROWSER'].to_sym,:switches => %w[--disable-extensions  --ignore-certificate-errors --disable-popup-blocking --disable-translate]
      else
        @browser = Watir::Browser.new ENV['BROWSER'].to_sym
      end
      # @browser = Watir::Browser.new ENV['BROWSER'].to_sym
      # @browser = Watir::Browser.new ENV['BROWSER'].to_sym,:switches => %w[--disable-extensions  --ignore-certificate-errors --disable-popup-blocking --disable-translate]
    end

    @browser.window.maximize
  end



#   ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
#   ENV['WHERE'] = "local" if ENV['WHERE'].nil?
#   if(ENV['WHERE']=="remote")
#   # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://mrahman1:55a94ff3-c894-4211-a918-67047d2da2ef@localhost:4444/wd/hub"})
#     @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://sgrahman:363648ef-2b14-4e4d-a137-1cb8792bcb0f@ondemand.saucelabs.com:443/wd/hub"})
#     #@browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://mrahman1:55a94ff3-c894-4211-a918-67047d2da2ef@ondemand.saucelabs.com:443/wd/hub"})
#
#
#     if (ENV['BROWSER']=="chrome")
#       @browser = Watir::Browser.new :chrome, :switches => %w[--disable-extensions]
#     end
#   else
#     # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)
#     @browser = Watir::Browser.new ENV['BROWSER'].to_sym
#   end
#   @browser.window.maximize
#
#   # Cucumber::Ast::Scenario = Cucumber::Reports::Legacy::Ast::Scenario
# end


After do |scenario|
  if scenario.failed?
      time = Time.now.strftime("%Y-%m-%d_%H-%M-%S")
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end

  # cookies = @browser.cookies.to_a
  #
  # cookies.each do |value|
  #
  #   puts "Cookies Info:#{value}"
  #
  # end

  #@browser.cookies.clear
  # @browser.quit


  AllureCucumber.configure do |c|
    c.output_dir = "C:/ELIS2_PageObject_Data_Driven_Framework1/Repots"
  end

end




# After do |scenario|
#
#    if scenario.failed?
#    time = Time.now.strftime("%Y-%m-%d_%H-%M-%S")
#    filename = "error-#{@current_page.class}-#{time}.png"
#    @current_page.save_screenshot(filename)
#    embed(filename, 'image/png')
#    end
#    @browser.cookies.clear
#   # @browser.close
#  end
#




# if if(ENV['BROWSER']== "headless")
#      @browser = Watir::Browser.new ENV['BROWSER'].to_sym
#   require 'headless'
#   headless = Headless.new
#   headless.start
#   at_exit do
#     headless.destroy
#   end
# end



at_exit do
  ENV['ARCHIVE_RESULTS'] = 'no' if ENV['ARCHIVE_RESULTS'].nil?
  if ENV['ARCHIVE_RESULTS']=="yes"
    Dir.mkdir("resultsarchive") if Dir["resultsarchive"].empty?
    folder = Dir.pwd
    input_filenames = ['results.html']

    zipfile_name = "#{Date.today}_results.zip"

    Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
      input_filenames.each do |filename|
        zipfile.add(filename, folder + '/' + filename)
      end
    end
    FileUtils.mv(zipfile_name,"resultsarchive/#{zipfile_name}")
  end
end



