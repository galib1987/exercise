module ExcelHelper

require 'rubyXL'

#my_excel_path = Dir.pwd + "/config/data/ELIS_External_Test_Data.xlsx"
# @workbook = RubyXL::Parser.parse(my_excel_path)
#sheet2 = @workbook['Sheet2']
# rows = sheet2.sheet_data
# first_row = rows[0]
# cells_first_row = first_row.cells
# puts cells_first_row[0].value
 #puts sheet2.sheet_data[0][50].value
# puts sheet2.sheet_data[1][0].value



#------------------------------------------------------------------------------
my_excel_path = Dir.pwd + "/config/data/ELIS_External_Test_Data.xlsx"
workbook = RubyXL::Parser.parse(my_excel_path)
puts workbook.worksheets[1].extract_data[1][1].to_s


#-------------------------------------------------------------------------------
# my_excel_path = Dir.pwd + "/config/data/ELIS_External_Test_Data.xlsx"
# workbook = RubyXL::Parser.parse(my_excel_path)
# $i = 0
# $row_num = 2 # Instead passing this row_num in step definition ,
#
# $col_num = 60
# $j=0
# while $i < $row_num do
#   puts("Inside the loop i = #$i" )
#   $j=0
#   while $j < $col_num do
#     #This is printing all the values in rows and stopping this execution
#     puts workbook.worksheets[1].extract_data[$i][$j].to_s
#     $j +=1
#   end
#   $i +=1
# end


  #-----------------------Excel Cell by Cell Reading----------------------

  # def select_zipCode
  #   dir_to_excel = Dir.pwd + '/lib/config/data'
  #   read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/myUSCIS_Domestic.xlsx")
  #   worksheet = read_workbook['Alien_Numbers_sheet']
  #   user_id.when_present.set worksheet[1][0].value
  # end






end







