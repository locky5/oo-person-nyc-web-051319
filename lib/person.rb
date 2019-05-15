class Person
  attr_accessor :bank_account, :happiness, :hygiene, :salary
  attr_reader :name
  
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness # 0 < happiness < 10
    @hygiene = hygiene # 0 <hygiene < 10 
  end
  
  def happy?
    if @happiness > 7
      true 
    else 
      false 
    end
  end
  
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
  
  def get_paid(salary)
    @bank_account += salary
  end
end