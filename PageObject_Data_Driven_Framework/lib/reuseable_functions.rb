module ReuseableFunction


  def excel(excel_file_name, work_sheet_name,row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}#{excel_file_name}")
    $worksheet = $read_workbook["#{work_sheet_name}"]
    $worksheet[row][column].value
  end


  def excel_sheet(work_sheet_name,row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/Test_Data.xlsx")
    $worksheet = $read_workbook["#{work_sheet_name}"]
    $worksheet[row][column].value
  end




  $b = [*10..28].sample
# #  wait and visiable for object
# # object =  wait 9 second for  specific object
# #  ErrorMsgDescription = if the object not display, Error message should describe
#  --------------------------------------------------------------------------------------------------------------------------------------
  def objWait(obj)

    @counter = 0

    while obj.exist? == false do
      @counter +=1
      if @counter == 15
        puts  " *** Requested object was not found ***"
        break
      else
        sleep 3
      end

    end

  end

  #Usage of objWait(obj)
  # element(:iAgreeButton) {|b| b.span(text:"I Agree")}
  #
  #
  # def agreed_Terms_condition
  #   objRefresh(iAgreeButton)
  #   sleep 2
  #   # iAgreeButton.when_present.click
  #   if iAgreeButton.exists?
  #     @browser.send_keys [:enter]
  #     puts "   ICAM My Access system displayed as expected    "
  #   end
  #
  #
  # end




#  --------------------------------------------------------------------------------------------------------------------------------------

  def objRefresh(obj)

    @counter = 0

    while obj.present? == false do
      @counter +=1
      if @counter == 9
        puts  " *** Requested object was not found ***"
        break
      else
        @browser.refresh
        sleep 3
      end
    end
  end

#   ----------------------------------------------------------------------------------------------------------------------------------------------------------

  def worksheet(excel_doc_name, workbook_name)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/#{excel_doc_name}.xlsx")
    worksheet = read_workbook["#{workbook_name}"]
  end

#  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  def objVisiable(obj)

    @counter = 0

    while obj.present? == false && obj.exist == false do
      @counter +=1
      if @counter == 5
        puts  " *** Requested object was not found ***"
        break
      else
        sleep 2
      end
    end
  end


#  ---------------------------------------------- #####   MODULE   END HERE  ####### ----------------------------------------------------------------------------------------

end

#  --------------------------------------------------------------------------------------------------------------------------------------
# @browser.title.include? 'https://sso.preprod.uscis.dhs.gov/sso/dashboard'
# puts '*****  Login Successful as Manager *****'

#---------------------------------------------------------------------------------------------------------------------------
#element(:myRequest_requsetID) { |b| b.link(text: "#{$requestID}") }
# def myRequestID
#
#   objWait(myRequest_requsetID)
#   @browser.text.include? myRequest_requsetID.text
#   myRequest_requsetID.when_present.click
#
# end

#--------------------------------------------------------------------------------------------------------------------------------
# def access_status
#   if @browser.text.include? "Completed"
#     puts " Requested access has been approved "
#   elsif @browser.text.include? "Created"
#     puts " Requested access has not been approved "
#   elsif @browser.text.include? "Expired"
#     puts " Requested access has not been approved "
#   end
#   @browser.text.include? "Completed"
#
#
#   puts "......................................"
#
#
#
#   puts "......................................"
# end
#---------------------------------------------------------------------------------------------------------------------------------
# def submit_Access_Request_Validation
#   sleep 3
#   success_message = successMSG.when_present.text
#   successMSG_RequestID = success_message.split('t ').last
#   # objRefresh(requestID)
#   sleep 3
#   $requestID = requestID_Number.when_present.text
#
#   if (successMSG_RequestID == $requestID)
#     puts "  ------   Access Request submitted as expected and  Request ID : #{$requestID}  -------------  "
#   else
#
#   end
#
#   $task_ID = task_ID.when_present.text
#
#   puts "  ^^^^^ Access Request submitted as expected and  Task ID : #{$task_ID} ^^^^^^^^^^^^^  "
#
# end

#---------------------------------------------------------------------------------------------------------------------------------

# def select_RequestType(sheetName,row,col)
#
#   requestType.when_present.click
#   # requestNewRole.when_present.click #select('Request New Role - Request access to a new system or role')
#   dir_to_excel = Dir.pwd + '/lib/config/data'
#   read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/System_Access_Request.xlsx")
#   worksheet = read_workbook[sheetName]
#
#   @browser.div(text: worksheet[row][col].value).when_present.click
#
# end


#on(Create_New_Request).select_RequestType('ICAM_Public_MyAccount_Access_Re',1,0)


#------------------------------------------------------------------------------------------------------------------------------------


