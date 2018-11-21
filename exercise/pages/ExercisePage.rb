class ExercisePage

  def initialize
    @value1 = @browser.element(id: "txt_val1")
    @value2 = @browser.element(id: "txt_val2")
    @value3 = @browser.element(id: "txt_val3")
    @value4 = @browser.element(id: "txt_val4")
    @value5 = @browser.element(id: "txt_val5")
       @totalbal = @browser.element(id: "txt_ttl_val")            
  end

  def value1
    @value1
  end
  def value2
    @value2
  end

  def value3
    @value3
  end
  def value4
    @value4
  end
    def value5
    @value5
  end
     def totalbal
    @totalbal
  end
end
