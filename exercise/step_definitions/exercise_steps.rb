require "rubygems"
require "test/unit"


Given(/^Navigate to the application$/) do
  @browser = Watir::Browser.new :chrome
    @browser.window.maximize
 @browser.goto "https://www.exercise1.com/values"
end


When(/^Capture all text fields values$/) do
  @exercise_page = ExercisePage.new
  @val1= @exercise_page.value1.text
  @val2= @exercise_page.value1.text
  @val3= @exercise_page.value1.text
  @val4= @exercise_page.value1.text
  @val5= @exercise_page.value1.text
end

When(/^Capture the value from the Total balance$/) do
 @exercise_page = ExercisePage.new
  @totalbalval= @exercise_page.totalbal.text
end

Then(/^Values should greater than zero$/) do
  assert @val1.gsub(/\$/,"").to_f>0
  assert @val2.gsub(/\$/,"").to_f>0
  assert @val3.gsub(/\$/,"").to_f>0
  assert @val4.gsub(/\$/,"").to_f>0
  assert @val5.gsub(/\$/,"").to_f>0
  assert @totalbalval.gsub(/\$/,"").to_f>0
  
end

Then(/^Values should formated as currency$/) do
  assert "#{@val1}".inlcude? "$"
    assert "#{@val2}".inlcude? "$"
      assert "#{@val3}".inlcude? "$"
        assert "#{@val4}".inlcude? "$"
          assert "#{@val5}".inlcude? "$"
            assert "#{@val6}".inlcude? "$"
end


And(/^Sum of all values$/) do
@sum=@val1.gsub(/\$/,"").to_f+@val2.gsub(/\$/,"").to_f+@val3.gsub(/\$/,"").to_f+@val4.gsub(/\$/,"").to_f+@val4.gsub(/\$/,"").to_f
 
end


Then(/^Compare and both values should match$/) do
  
  expect(@totalbalval.gsub(/\$/,"").to_f).to eql(@sum)

end



end
