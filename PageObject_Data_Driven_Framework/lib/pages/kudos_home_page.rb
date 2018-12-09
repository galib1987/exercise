class KudosHomePage<GenericBasePage


  element(:profile_img_icon) {|b| b.image(xpath:'//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a/img')}          #Profile img
  element(:sign_out_link) {|b| b.link(text:'Sign Out')}                                                        #Sign out link
  element(:administration_link) {|b| b.link(text:'Administration')}                                            #Administrator link
  element(:action) {|b| b.link(text:'Action')}                                                                 #Action link
  element(:another_action) {|b| b.link(text:'Another action')}                                                 #Another Action link
  element(:kudo_bell) {|b| b.link(xpath:'//*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a/img')}             #kudo bell link
  element(:current_user) {|b| b.span(xpath:'//*[@id="userAccount"]/div/div/div[2]/h4/span')}                   #Current Users name
  element(:username) {|b| b.h1(xpath:'//*[@id="userAccount"]/div/div/div[4]/ul/li[1]/h1')}                     #Available Points
  element(:username) {|b| b.h1(text:'//*[@id="userAccount"]/div/div/div[4]/ul/li[2]/h1')}                      #My Points
  element(:number_of_kudo) {|b| b.div(class:'number')}                                                         #number of kudos
  element(:recent_activity_tab) {|b| b.link(text:'Recent Activity')}                                           #recent activity tab
  element(:leader_boards_tab) {|b| b.link(text:'Leaderboards')}                                                #Leader boards tab
  element(:profile_tab) {|b| b.link(text:'Profile')}                                                           #profile tab
  element(:friends_tab) {|b| b.link(text:'Friends')}                                                           #Friends Tab
  element(:settings_tab ) {|b| b.link(text:'Settings ')}                                                       #settings_tab
  element(:username) {|b| b.link(text:'Sign Out')}                                                        #Sign out link
  element(:username) {|b| b.link(text:'Sign Out')}                                                        #Sign out link



def who_am_i
  puts "Current User is: #{current_user.text}"
end


def click_on_recent_activity
  recent_activity_tab.when_present.click
end













end