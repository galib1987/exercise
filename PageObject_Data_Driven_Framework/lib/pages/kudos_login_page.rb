class KudosLoginPage<GenericBasePage
  include ReuseableFunction

  page_url "http://107.22.75.223:8080/flash-client/?p=login"
  #page_url "http://hugo@domain.com:password@107.22.75.223:8080/flash-client/?p=login"
  #page_url "http://victor@domain.com:password@107.22.75.223:8080/flash-client/?p=login"
 # page_url 'http://www.google.com'
  element(:user_name) {|b| b.text_field(id:"inputUsernameEmail")}          #Username text field
  element(:pass_word) {|b| b.text_field(id:"inputPassword")}               #Password text field
  element(:login_button) {|b| b.button(text:"Log In")}                        #Login Button


#--------Method to fill up login info-----------------------------------------------------------------------------------
  def login_with_credentials
    user_name.when_present.set excel_sheet("Login_info",1,0)
    pass_word.when_present.set excel_sheet("Login_info",1,1)
  end



  def browser_authentication

    @browser.goto "http://hugo@domain.com:password@107.22.75.223:8080/flash-client/"
    #@browser.goto "http://hugo@domain.com:password@107.22.75.223:8080/flash-client/?p=login"
    #@browser.goto "http://hugo@domain.com:password@107.22.75.223:8080"

  end



  def http_authentication
    # win = RAutomation::Window.new :title => /Enter name of file to save to/i,:adapter => :win_32
    win = RAutomation::Window.new :title => /Authentication Required/,:adapter => :win_32
    sleep 2
    win.close
  end



  #----Method to click on login button----------------------------------------------------------------------------------
 def click_on_login_button
   login_button.when_present.click
 end




  #-----------RAutomation-----------------------------------------------------------------------------------------------

  def authentication
    #window = RAutomation::Window.new(:title=> /Authentication Required/i)
    window = RAutomation::Window.new(:title=> /Authentication/i)
    window.activate
    # window.send_keys [:arrow_down]
    # sleep 2
    # window.send_keys [:arrow_down]
    # sleep 2
    # window.send_keys [:arrow_down]
    # sleep 2
    # window.send_keys [:arrow_down]
    # sleep 2
    # window.send_keys [:enter]
    sleep 3
    window.text_field(:text=> "Edit").set("hugo@domain.com")
    sleep 5
    window.send_keys [:tab]
    sleep 3
    window.text_field(:class=> "Edit").set("password")
    window.send_keys [:tab]
    window.button(:value=> "&Log In").click #{true}

    # window.text_field(:class =>"Edit").set('C:\Users\vsubrav\Desktop\Green_card.jpg')
  end



  # def pin_validation
  #   window = RAutomation::Window.new :title=> "Windows Security"
  #   window.activate
  #   sleep 3
  #   window.text_field(:class=> "Edit").set "483240"
  #   sleep 3
  #   window.button(:value => "&OK").click {true}
  #   # button.activate
  #   # button.exists? # => true
  #   # button.click
  #   # window.send_keys [:enter]
  #   #window.button(:value=> "&OK").click
  #   sleep 6
  #   #  window.send_keys [:tab]
  #   # sleep 2
  #   # window.send_keys [:tab]
  #   # sleep 2
  #
  #
  #   # window.button(:value=> "&OK").click
  #   # sleep 3
  #   # puts button.value
  # end

#def test

  #----------Execute single line of Javascript----------------------------------------------
 # @browser.execute_script("oFormObject = document.forms['/order/orders'];")

  #-------------Execute multiple line of javascripts--------------------------------------------------------
#   @browser.execute_script << - JS
#   oFormObject = document.forms['/order/orders'];
#   oFormElement = oFormObject.elements[\"order[begin_string]\"];
#
# JS



 #--------------------------------------------------------------------------------------------------------
  #create the javascript that will send the relevant details to the password manager
# @browser.execute_script << - JS
#
# var addCredentialsEvent = new CustomEvent("add_credentials_to_passman", {
#   detail: {
#     host: 'http://secure.example.com',
#     username: 'bob',
#     password: 'P45sword'
#   }
# })
# window.dispatchEvent(addCredentialsEvent)
#   SCRIPT
#
# #inject the script into the browser:
#   page.execute_script pass_man_update_script
# end
#
# JS







end